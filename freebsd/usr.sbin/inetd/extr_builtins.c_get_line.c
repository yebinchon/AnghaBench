
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_mask; scalar_t__ sa_flags; } ;


 int SIGALRM ;
 int SIG_DFL ;
 int alarm (int) ;
 int read (int,char*,int) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;

__attribute__((used)) static int
get_line(int fd, char *buf, int len)
{
 int count = 0, n;
 struct sigaction sa;

 sa.sa_flags = 0;
 sigemptyset(&sa.sa_mask);
 sa.sa_handler = SIG_DFL;
 sigaction(SIGALRM, &sa, (struct sigaction *)0);
 do {
  alarm(10);
  n = read(fd, buf, len-count);
  alarm(0);
  if (n == 0)
   return (count);
  if (n < 0)
   return (-1);
  while (--n >= 0) {
   if (*buf == '\r' || *buf == '\n' || *buf == '\0')
    return (count);
   count++;
   buf++;
  }
 } while (count < len);
 return (count);
}
