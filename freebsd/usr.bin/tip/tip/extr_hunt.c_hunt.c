
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;
typedef int sig_t ;


 int DC ;
 scalar_t__ FD ;
 int HUPCL ;
 int HW ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int SIGALRM ;
 int SIG_DFL ;
 int TCSAFLUSH ;
 int TIOCEXCL ;
 int alarm (int) ;
 scalar_t__ boolean (int ) ;
 int dead ;
 int deadfl ;
 int deadline ;
 char* getremote (char*) ;
 int ioctl (scalar_t__,int ,int ) ;
 scalar_t__ open (char*,int) ;
 int perror (char*) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 char* strrchr (char*,char) ;
 int tcgetattr (scalar_t__,struct termios*) ;
 int tcsetattr (scalar_t__,int ,struct termios*) ;
 scalar_t__ uu_lock (char*) ;
 int uu_unlock (char*) ;
 char* uucplock ;
 int value (int ) ;

long
hunt(char *name)
{
 char *cp;
 sig_t f;

 f = signal(SIGALRM, dead);
 while ((cp = getremote(name))) {
  deadfl = 0;
  uucplock = strrchr(cp, '/');
  if (uucplock == ((void*)0))
   uucplock = cp;
  else
   uucplock++;

  if (uu_lock(uucplock) < 0)
   continue;







  if (!HW)
   break;
  if (setjmp(deadline) == 0) {
   alarm(10);
   FD = open(cp, (O_RDWR |
       (boolean(value(DC)) ? O_NONBLOCK : 0)));
  }
  alarm(0);
  if (FD < 0) {
   perror(cp);
   deadfl = 1;
  }
  if (!deadfl) {
   struct termios cntrl;

   tcgetattr(FD, &cntrl);
   if (!boolean(value(DC)))
    cntrl.c_cflag |= HUPCL;
   tcsetattr(FD, TCSAFLUSH, &cntrl);
   ioctl(FD, TIOCEXCL, 0);
   signal(SIGALRM, SIG_DFL);
   return ((long)cp);
  }
  (void)uu_unlock(uucplock);
 }
 signal(SIGALRM, f);
 return (deadfl ? -1 : (long)cp);
}
