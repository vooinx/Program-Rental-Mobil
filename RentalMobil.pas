Program RentalMobil;
Uses crt;
type dataUserArray=array[1..100] of String;
type hargaSewa=array[1..100] of real;
Label
	awal,loginpage,menu_pemesanan,keluar;
Var
	menu,n,jmlsewamobil: integer;
	totalharga:real;
	namapemesan,jeniskendaraan,kelas,nama, user, pass,loginUser,loginPass:dataUserArray;
	harga,hari:hargaSewa;

Begin
	clrscr;
	textcolor(Cyan);
	Writeln('------------------------------------------');
	Writeln('                                  /\      ');
	Writeln('              Selamat Datang     (` -7  ^ ');
	Writeln('               Rental Mobil      |, -\  |');
  Writeln('                By kel.3         \,"/,)/  ');
  Writeln('');
	Writeln('------------------------------------------');
	readln;

	awal:
	clrscr;
	Writeln('----------------------------');
	Writeln('------- Menu Program -------');
	Writeln('----------------------------');
	Writeln('1.) Daftar');
	Writeln('2.) Login');
	Writeln('3.) Keluar');
	Write('Pilih Menu 1-3?: ');
	readln(menu);

	if menu=1 Then
	begin
		ClrScr;
		Writeln('----------------------------');
		Writeln('------- Menu Daftar --------');
		Writeln('----------------------------');
		Write('Nama: ');
		readln(nama[n]);
		Write('User: ');
		readln(user[n]);
		Write('Password: ');
		readln(pass[n]);

		textcolor(green);
		writeln('Pendaftaran Sukses, Silahkan Login!');
		Writeln('Silahkan Klik Enter Untuk Kembali Ke Menu Program');
		textcolor(Cyan);
		readln;
		goto awal;
	end
	else if menu=2 then
		Begin
			Goto loginpage;
		end
	else if menu=3 then
		Begin
			goto keluar;
		end
	Else if (menu<>1) or (menu<>2) or (menu<>3) then
		Begin
		clrscr;
			textcolor(red);
			writeln('Anda Salah Input ..... !');
			textcolor(2);
			write ('Tekan enter untuk kembali ke menu awal! ');
			readln;
			textcolor(cyan);
			goto awal;
		end;

			loginpage:
			clrscr;
			Writeln('----------------------------');
			Writeln('---- Silahkan Login ^_^ ----');
			Writeln('----------------------------');
			Write('User: ');
			readln(loginUser[n]);
			Write('Password: ');
			readln(loginPass[n]);


		if (loginUser[n]='') and (loginPass[n]='') Then
			Begin
					goto loginpage;
					writeln('Akun Tidak ditemukan');
			End
		Else if (loginUser[n]=user[n]) and (loginPass[n]=pass[n]) Then
			Begin
				writeln('Login Sukses');
				goto menu_pemesanan;
			End
			Else
			Begin
				textcolor(red);
				Writeln('Maaf, User atau password salah. Silahkan Coba Lagi!');
				readln;
				textcolor(cyan);
				goto loginpage;
			end;
			keluar:
			Begin
				textcolor(Cyan);
				clrscr;
				writeln('------------------------------------------------------');
				writeln('----- Terima kasih sudah menggunakan program ini -----');
				writeln('--------------- Created by Kelompok 3 ----------------');
				writeln('------------------------------------------------------');
				exit;
			end;
			menu_pemesanan:
				Begin
					clrscr;
					writeln('------------------------------');
					writeln('------- Menu Pemesanan -------');
					writeln('-------  Rental Mobil --------');
					writeln('------------------------------');
					writeln('');
					gotoxy(11,6);writeln('Nama : ',nama[n]);
					writeln('');
					writeln('Jenis Kendaraan:');
					gotoxy(7,10);writeln('1.) Avanza');
					gotoxy(7,11);writeln('2.) Calya');
					gotoxy(7,12);writeln('3.) Agya');
					gotoxy(3,14);writeln('Kelas: ');
					gotoxy(7,16);writeln('1.) AC');
					gotoxy(7,17);writeln('2.) Non AC');
					Writeln('');
					gotoxy(8,19);writeln('                                           ');
					gotoxy(8,20);writeln('                 Pricelist                 ');
					gotoxy(8,21);writeln('-------------------------------------------');
					gotoxy(8,22);writeln('No     Jenis Kendaraan      AC       Non AC');
					gotoxy(8,23);writeln('-------------------------------------------');
					gotoxy(8,24);writeln('1.              Avanza    500000     300000');
					gotoxy(8,25);writeln('2.               Calya    400000     250000');
					gotoxy(8,26);writeln('3.                Agya    300000     200000');
					writeln('');
					gotoxy(8,29);write('Berapa Jumlah Mobil Yang Ingin Di Rental?: ');
					readln(jmlsewamobil);
					writeln('');

					for n:= 1 to jmlsewamobil Do
					Begin
						writeln('Rental Mobil ',n);
						write('Nama Pemesan: ');
						readln(namapemesan[n]);
						write('Pilih Jenis Kendaraan: ');
						readln(jeniskendaraan[n]);
						write('Kelas: ');
						readln(kelas[n]);
						write('Jumlah Hari: ');
						readln(hari[n]);
						writeln('');

						if (jeniskendaraan[n]= '1') and (kelas[n]= '1') Then
						Begin
							jeniskendaraan[n]:='avanza';
							kelas[n]:='Ac';
							harga[n]:=500000 * hari[n];
						End
						Else if (jeniskendaraan[n]= '1') and (kelas[n]= '2') then
						Begin
							jeniskendaraan[n]:='avanza';
							kelas[n]:='NonAc';
							harga[n]:=300000 * hari[n];
						end;
						if (jeniskendaraan[n]= '2') and (kelas[n]= '1') Then
						Begin
							jeniskendaraan[n]:='Calya';
							kelas[n]:='Ac';
							harga[n]:=400000 * hari[n];
						End
						Else if (jeniskendaraan[n]= '2') and (kelas[n]= '2') then
						Begin
							jeniskendaraan[n]:='Calya';
							kelas[n]:='NonAc';
							harga[n]:=250000 * hari[n];
						end;
						if (jeniskendaraan[n]= '3') and (kelas[n]= '1') Then
						Begin
							jeniskendaraan[n]:='Agya';
							kelas[n]:='Ac';
							harga[n]:=300000 * hari[n];
						End
						Else if (jeniskendaraan[n]= '3') and (kelas[n]= '2') then
						Begin
							jeniskendaraan[n]:='Agya';
							kelas[n]:='NonAc';
							harga[n]:=200000 * hari[n];
						end;
						totalharga:= totalharga + harga[n];
					end;
						writeln('-------------------------------------------------------------');
						writeln('No.    Nama Pemesan    Jenis Kendaraan     Kelas        Harga');
						writeln('-------------------------------------------------------------');
					for n:= 1 to jmlsewamobil Do
					Begin
						writeln(n,'.',namapemesan[n]:17,'',jeniskendaraan[n]:19,'    ',kelas[n]:6,'',harga[n]:13:2);
					end;
						writeln('-------------------------------------------------------------');
						writeln('                                  Total Harga :Rp. ', totalharga:0:2);
						writeln('-------------------------------------------------------------');
				end;
End.