
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;


 int EINVAL ;
 int SIGALRM ;
 int errno ;
 int error (char*) ;
 int timer_fn ;

int sigaction(int sig, struct sigaction *in, struct sigaction *out)
{
 if (sig != SIGALRM)
  return errno = EINVAL,
   error("sigaction only implemented for SIGALRM");
 if (out != ((void*)0))
  return errno = EINVAL,
   error("sigaction: param 3 != NULL not implemented");

 timer_fn = in->sa_handler;
 return 0;
}
