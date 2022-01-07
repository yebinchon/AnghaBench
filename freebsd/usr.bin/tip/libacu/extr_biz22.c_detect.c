
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;


 int DIALTIMEOUT ;
 int FD ;
 int SIGALRM ;
 int alarm (int ) ;
 int biz22_abort () ;
 scalar_t__ dialtimeout ;
 int number (int ) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 int timeoutbuf ;
 int value (int ) ;

__attribute__((used)) static int
detect(char *s)
{
 sig_t f;
 char c;

 f = signal(SIGALRM, sigALRM);
 dialtimeout = 0;
 while (*s) {
  if (setjmp(timeoutbuf)) {
   biz22_abort();
   break;
  }
  alarm(number(value(DIALTIMEOUT)));
  read(FD, &c, 1);
  alarm(0);
  c &= 0177;
  if (c != *s++)
   return (0);
 }
 signal(SIGALRM, f);
 return (dialtimeout == 0);
}
