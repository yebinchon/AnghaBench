
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sig_t ;


 int DIALTIMEOUT ;
 int FD ;
 int SIGALRM ;
 int SIG_DFL ;
 int alarm (int ) ;
 scalar_t__ dialtimeout ;
 int number (int ) ;
 int printf (char*,...) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 size_t strlen (char*) ;
 int timeoutbuf ;
 int value (int ) ;

__attribute__((used)) static char
gobble(char *match)
{
 char c;
 sig_t f;
 size_t i;
 int status = 0;

 f = signal(SIGALRM, sigALRM);
 dialtimeout = 0;



 do {
  if (setjmp(timeoutbuf)) {
   signal(SIGALRM, f);
   return (0);
  }
  alarm(number(value(DIALTIMEOUT)));
  read(FD, &c, 1);
  alarm(0);
  c &= 0177;



  for (i = 0; i < strlen(match); i++)
   if (c == match[i])
    status = c;
 } while (status == 0);
 signal(SIGALRM, SIG_DFL);



 return (status);
}
