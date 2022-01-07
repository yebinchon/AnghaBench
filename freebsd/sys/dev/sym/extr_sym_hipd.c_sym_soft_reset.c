
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int hcb_p ;


 int CABRT ;
 int DIP ;
 int INB (int ) ;
 int INW (int ) ;
 int OUTB (int ,int ) ;
 int SIP ;
 int nc_dstat ;
 int nc_istat ;
 int nc_sist ;
 int printf (char*,char*) ;
 int sym_chip_reset (int ) ;
 char* sym_name (int ) ;

__attribute__((used)) static void sym_soft_reset (hcb_p np)
{
 u_char istat;
 int i;

 OUTB (nc_istat, CABRT);
 for (i = 1000000 ; i ; --i) {
  istat = INB (nc_istat);
  if (istat & SIP) {
   INW (nc_sist);
   continue;
  }
  if (istat & DIP) {
   OUTB (nc_istat, 0);
   INB (nc_dstat);
   break;
  }
 }
 if (!i)
  printf("%s: unable to abort current chip operation.\n",
   sym_name(np));
 sym_chip_reset (np);
}
