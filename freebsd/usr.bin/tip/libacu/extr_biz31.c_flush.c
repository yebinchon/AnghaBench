
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;


 int FD ;
 int SIGALRM ;
 int alarm (int) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 scalar_t__ timeout ;
 int timeoutbuf ;

__attribute__((used)) static int
flush(char *s)
{
 sig_t f;
 char c;

 f = signal(SIGALRM, sigALRM);
 while (*s++) {
  if (setjmp(timeoutbuf))
   break;
  alarm(10);
  read(FD, &c, 1);
  alarm(0);
 }
 signal(SIGALRM, f);
 timeout = 0;
}
