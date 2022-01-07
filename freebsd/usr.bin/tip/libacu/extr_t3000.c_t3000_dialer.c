
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;


 int DIALTIMEOUT ;
 int FD ;
 int HOST ;
 int HUPCL ;
 int TCIOFLUSH ;
 int TCSANOW ;
 int VERBOSE ;
 scalar_t__ boolean (int ) ;
 int connected ;
 scalar_t__ dialtimeout ;
 int fflush (int ) ;
 int logent (int ,char*,char*,char*) ;
 int number (int ) ;
 int printf (char*,...) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,int ) ;
 int stdout ;
 int strlen (char*) ;
 int t3000_connect () ;
 int t3000_disconnect () ;
 int t3000_swallow (char*) ;
 int t3000_sync () ;
 int t3000_verbose_read () ;
 int t3000_write (int ,char*,int) ;
 int tcflush (int ,int ) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int value (int ) ;

int
t3000_dialer(char *num, char *acu)
{
 char *cp;
 struct termios cntrl;




 if (boolean(value(VERBOSE)))
  printf("Using \"%s\"\n", acu);

 tcgetattr(FD, &cntrl);
 cntrl.c_cflag |= HUPCL;
 tcsetattr(FD, TCSANOW, &cntrl);



 if (!t3000_sync()) {
badsynch:
  printf("can't synchronize with t3000\n");



  return (0);
 }
 t3000_write(FD, "AT E0\r", 6);
 sleep(1);




 tcflush(FD, TCIOFLUSH);
 t3000_write(FD, "AT E0 H0 Q0 X4 V1\r", 18);
 if (!t3000_swallow("\r\nOK\r\n"))
  goto badsynch;
 fflush(stdout);
 t3000_write(FD, "AT D", 4);
 for (cp = num; *cp; cp++)
  if (*cp == '=')
   *cp = ',';
 t3000_write(FD, num, strlen(num));
 t3000_write(FD, "\r", 1);
 connected = t3000_connect();







 if (dialtimeout)
  t3000_disconnect();
 return (connected);
}
