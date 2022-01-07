
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;


 int DIALTIMEOUT ;
 int FD ;
 int SIGALRM ;
 int alarm (int ) ;
 int biz31_abort () ;
 int number (int ) ;
 int printf (char*) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 scalar_t__ timeout ;
 int timeoutbuf ;
 int value (int ) ;

__attribute__((used)) static int
detect(char *s)
{
 sig_t f;
 char c;

 f = signal(SIGALRM, sigALRM);
 timeout = 0;
 while (*s) {
  if (setjmp(timeoutbuf)) {
   printf("\07timeout waiting for reply\n");
   biz31_abort();
   break;
  }
  alarm(number(value(DIALTIMEOUT)));
  read(FD, &c, 1);
  alarm(0);
  if (c != *s++)
   break;
 }
 signal(SIGALRM, f);
 return (timeout == 0);
}
