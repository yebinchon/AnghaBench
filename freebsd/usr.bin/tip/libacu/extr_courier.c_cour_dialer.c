
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
 int TCSAFLUSH ;
 int VERBOSE ;
 scalar_t__ boolean (int ) ;
 int connected ;
 int cour_connect () ;
 int cour_disconnect () ;
 int cour_swallow (char*) ;
 int cour_verbose_read () ;
 int cour_write (int ,char*,int) ;
 int coursync () ;
 scalar_t__ dialtimeout ;
 int fflush (int ) ;
 int logent (int ,char*,char*,char*) ;
 int number (int ) ;
 int printf (char*,...) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,int ) ;
 int stdout ;
 int strlen (char*) ;
 int tcflush (int ,int ) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int value (int ) ;

int
cour_dialer(char *num, char *acu)
{
 char *cp;



 struct termios cntrl;

 if (boolean(value(VERBOSE)))
  printf("Using \"%s\"\n", acu);

 tcgetattr(FD, &cntrl);
 cntrl.c_cflag |= HUPCL;
 tcsetattr(FD, TCSAFLUSH, &cntrl);



 if (!coursync()) {
badsynch:
  printf("can't synchronize with courier\n");



  return (0);
 }
 cour_write(FD, "AT E0\r", 6);
 sleep(1);




 tcflush(FD, TCIOFLUSH);
 cour_write(FD, "AT C1 E0 H0 Q0 X6 V1\r", 21);
 if (!cour_swallow("\r\nOK\r\n"))
  goto badsynch;
 fflush(stdout);
 cour_write(FD, "AT D", 4);
 for (cp = num; *cp; cp++)
  if (*cp == '=')
   *cp = ',';
 cour_write(FD, num, strlen(num));
 cour_write(FD, "\r", 1);
 connected = cour_connect();







 if (dialtimeout)
  cour_disconnect();
 return (connected);
}
