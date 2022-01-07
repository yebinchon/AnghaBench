
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;


 int CONNECTED ;
 int DIALING ;
 int DIALTIMEOUT ;
 int FAILED ;
 int FD ;
 int HOST ;
 int HUPCL ;
 int TCIOFLUSH ;
 int TCSANOW ;
 int VERBOSE ;
 scalar_t__ boolean (int ) ;
 scalar_t__ dialtimeout ;
 int error_rep (char) ;
 int fflush (int ) ;
 char gobble (char*) ;
 int hay_disconnect () ;
 scalar_t__ hay_sync () ;
 int logent (int ,char*,char*,char*) ;
 int number (int ) ;
 int printf (char*) ;
 int snprintf (char*,int,char*,int ) ;
 int state ;
 int stdout ;
 int strlen (char*) ;
 int tcflush (int ,int ) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int value (int ) ;
 int write (int ,char*,int) ;

int
hay_dialer(char *num, char *acu)
{
 char *cp;
 int connected = 0;
 char dummy;
 struct termios cntrl;



 if (hay_sync() == 0)
  return(0);
 if (boolean(value(VERBOSE)))
  printf("\ndialing...");
 fflush(stdout);
 tcgetattr(FD, &cntrl);
 cntrl.c_cflag |= HUPCL;
 tcsetattr(FD, TCSANOW, &cntrl);
 tcflush(FD, TCIOFLUSH);
 write(FD, "ATv0\r", 5);
 gobble("\r");
 gobble("\r");
 write(FD, "ATTD", 4);
 for (cp = num; *cp; cp++)
  if (*cp == '=')
   *cp = ',';
 write(FD, num, strlen(num));
 state = DIALING;
 write(FD, "\r", 1);
 connected = 0;
 if (gobble("\r")) {
  if ((dummy = gobble("01234")) != '1')
   error_rep(dummy);
  else
   connected = 1;
 }
 if (connected)
  state = CONNECTED;
 else {
  state = FAILED;
  return (connected);
 }
 tcflush(FD, TCIOFLUSH);







 if (dialtimeout)
  hay_disconnect();
 return (connected);
}
