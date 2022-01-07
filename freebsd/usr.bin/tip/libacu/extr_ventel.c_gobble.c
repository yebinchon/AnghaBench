
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
 int number (int ) ;
 int putchar (char) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 int timeoutbuf ;
 int value (int ) ;

__attribute__((used)) static int
gobble(char match, char response[])
{
 char *cp = response;
 sig_t f;
 char c;

 f = signal(SIGALRM, sigALRM);
 dialtimeout = 0;
 do {
  if (setjmp(timeoutbuf)) {
   signal(SIGALRM, f);
   *cp = '\0';
   return (0);
  }
  alarm(number(value(DIALTIMEOUT)));
  read(FD, cp, 1);
  alarm(0);
  c = (*cp++ &= 0177);




 } while (c != '\n' && c != match);
 signal(SIGALRM, SIG_DFL);
 *cp = '\0';
 return (c == match);
}
