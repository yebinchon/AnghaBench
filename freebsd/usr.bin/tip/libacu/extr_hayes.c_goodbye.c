
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMBUFLEN ;
 int FD ;
 int FIONREAD ;
 int TCIOFLUSH ;
 int TIOCCDTR ;
 int close (int ) ;
 char* dumbuf ;
 char gobble (char*) ;
 scalar_t__ hay_sync () ;
 int ioctl (int ,int ,int*) ;
 int min (int,int ) ;
 int printf (char*,...) ;
 size_t read (int ,char*,int ) ;
 size_t rlen ;
 int sleep (int) ;
 int tcflush (int ,int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
goodbye(void)
{
 int len;
 char c;

 tcflush(FD, TCIOFLUSH);
 if (hay_sync()) {
  sleep(1);

  tcflush(FD, TCIOFLUSH);

  write(FD, "ATH0\r", 5);

  c = gobble("03");
  if (c != '0' && c != '3') {
   printf("cannot hang up modem\n\r");
   printf("please use 'tip dialer' to make sure the line is hung up\n\r");
  }

  sleep(1);
  ioctl(FD, FIONREAD, &len);






  write(FD, "ATv1\r", 5);
  sleep(1);







 }
 tcflush(FD, TCIOFLUSH);
 ioctl(FD, TIOCCDTR, 0);
 close(FD);
}
