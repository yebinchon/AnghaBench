
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
 int delay (int,int) ;
 scalar_t__ dialtimeout ;
 int echo (char*) ;
 int fflush (int ) ;
 int gobble (char,char*) ;
 scalar_t__ isupper (char) ;
 int logent (int ,char*,char*,char*) ;
 int number (int ) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int ) ;
 int stdout ;
 char* strchr (char*,char) ;
 int tcflush (int ,int ) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 char tolower (char) ;
 int value (int ) ;
 int ven_disconnect () ;
 int vensync (int ) ;
 int write (int ,char*,int) ;

int
ven_dialer(char *num, char *acu)
{
 char *cp;
 int connected = 0;
 char *msg, line[80];
 struct termios cntrl;




 if (!vensync(FD)) {
  printf("can't synchronize with ventel\n");



  return (0);
 }
 if (boolean(value(VERBOSE)))
  printf("\ndialing...");
 fflush(stdout);
 tcgetattr(FD, &cntrl);
 cntrl.c_cflag |= HUPCL;
 tcsetattr(FD, TCSANOW, &cntrl);
 echo("#k$\r$\n$D$I$A$L$:$ ");
 for (cp = num; *cp; cp++) {
  delay(1, 10);
  write(FD, cp, 1);
 }
 delay(1, 10);
 write(FD, "\r", 1);
 gobble('\n', line);
 if (gobble('\n', line))
  connected = gobble('!', line);
 tcflush(FD, TCIOFLUSH);







 if (dialtimeout)
  ven_disconnect();
 if (connected || dialtimeout || !boolean(value(VERBOSE)))
  return (connected);

 cp = strchr(line, '\r');
 if (cp)
  *cp = '\0';
 for (cp = line; (cp = strchr(cp, ' ')) != ((void*)0); cp++)
  if (cp[1] == ' ')
   break;
 if (cp) {
  while (*cp == ' ')
   cp++;
  msg = cp;
  while (*cp) {
   if (isupper(*cp))
    *cp = tolower(*cp);
   cp++;
  }
  printf("%s...", msg);
 }
 return (connected);
}
