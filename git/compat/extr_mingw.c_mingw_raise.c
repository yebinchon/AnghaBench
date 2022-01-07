
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SIG_DFL (int const) ;
 int SIG_IGN (int const) ;
 int STDERR_FILENO ;
 int errno ;
 int exit (int ) ;
 int fputs (char*,int ) ;
 int isatty (int ) ;
 int raise (int) ;
 int sigint_fn (int const) ;
 int stderr ;
 int timer_fn (int const) ;

int mingw_raise(int sig)
{
 switch (sig) {
 case 134:
  if (timer_fn == SIG_DFL) {
   if (isatty(STDERR_FILENO))
    fputs("Alarm clock\n", stderr);
   exit(128 + 134);
  } else if (timer_fn != SIG_IGN)
   timer_fn(134);
  return 0;

 case 130:
  if (sigint_fn == SIG_DFL)
   exit(128 + 130);
  else if (sigint_fn != SIG_IGN)
   sigint_fn(130);
  return 0;
 default:
  return raise(sig);



 }
}
