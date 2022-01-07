
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;


 int DIALTIMEOUT ;
 int FD ;
 int SIGALRM ;
 int SIG_DFL ;
 int VERBOSE ;
 int alarm (int ) ;
 scalar_t__ boolean (int ) ;
 scalar_t__ dialtimeout ;
 int fflush (int ) ;
 int number (int ) ;
 int putchar (char) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 int stdout ;
 int timeoutbuf ;
 int value (int ) ;

__attribute__((used)) static int
t3000_swallow(char *match)
{
 sig_t f;
 char c;

 f = signal(SIGALRM, sigALRM);
 dialtimeout = 0;
 do {
  if (*match =='\0') {
   signal(SIGALRM, f);
   return (1);
  }
  if (setjmp(timeoutbuf)) {
   signal(SIGALRM, f);
   return (0);
  }
  alarm(number(value(DIALTIMEOUT)));
  read(FD, &c, 1);
  alarm(0);
  c &= 0177;




 } while (c == *match++);




 signal(SIGALRM, SIG_DFL);
 return (0);
}
