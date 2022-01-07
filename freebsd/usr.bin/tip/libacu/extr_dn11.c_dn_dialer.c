
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;


 char* DV ;
 scalar_t__ EBUSY ;
 scalar_t__ EIO ;
 int FD ;
 int HUPCL ;
 int SIGALRM ;
 int SIGINT ;
 int SIGKILL ;
 int SIGQUIT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int TCSANOW ;
 int VERBOSE ;
 int alarm (int) ;
 int alarmtr ;
 scalar_t__ boolean (int ) ;
 int child ;
 int close (int ) ;
 int dn ;
 scalar_t__ errno ;
 int exit (int) ;
 int fflush (int ) ;
 int fork () ;
 int jmpbuf ;
 int kill (int,int ) ;
 int open (char*,int) ;
 int printf (char*) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int stdout ;
 int strlen (char*) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int value (int ) ;
 int wait (int*) ;
 int write (int ,char*,int) ;

int
dn_dialer(char *num, char *acu)
{
 int lt, nw;
 int timelim;
 struct termios cntrl;

 if (boolean(value(VERBOSE)))
  printf("\nstarting call...");
 if ((dn = open(acu, 1)) < 0) {
  if (errno == EBUSY)
   printf("line busy...");
  else
   printf("acu open error...");
  return (0);
 }
 if (setjmp(jmpbuf)) {
  kill(child, SIGKILL);
  close(dn);
  return (0);
 }
 signal(SIGALRM, alarmtr);
 timelim = 5 * strlen(num);
 alarm(timelim < 30 ? 30 : timelim);
 if ((child = fork()) == 0) {



  signal(SIGALRM, SIG_IGN);
  signal(SIGINT, SIG_IGN);
  signal(SIGQUIT, SIG_IGN);
  sleep(2);
  nw = write(dn, num, lt = strlen(num));
  exit(nw != lt);
 }



 if ((FD = open(DV, 2)) < 0) {
  if (errno == EIO)
   printf("lost carrier...");
  else
   printf("dialup line open failed...");
  alarm(0);
  kill(child, SIGKILL);
  close(dn);
  return (0);
 }
 alarm(0);
 tcgetattr(dn, &cntrl);
 cntrl.c_cflag |= HUPCL;
 tcsetattr(dn, TCSANOW, &cntrl);
 signal(SIGALRM, SIG_DFL);
 while ((nw = wait(&lt)) != child && nw != -1)
  ;
 fflush(stdout);
 close(dn);
 if (lt != 0) {
  close(FD);
  return (0);
 }
 return (1);
}
