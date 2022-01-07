
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
 int number (int ) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 int strlen (char*) ;
 int timeoutbuf ;
 int value (int ) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static int
cmd(char *s)
{
 sig_t f;
 char c;

 write(FD, s, strlen(s));
 f = signal(SIGALRM, sigALRM);
 if (setjmp(timeoutbuf)) {
  biz22_abort();
  signal(SIGALRM, f);
  return (1);
 }
 alarm(number(value(DIALTIMEOUT)));
 read(FD, &c, 1);
 alarm(0);
 signal(SIGALRM, f);
 c &= 0177;
 return (c != '\r');
}
