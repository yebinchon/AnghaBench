
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;


 int SIG_DFL ;
 int SIG_UNBLOCK ;
 int audit_logout () ;
 int exit (int) ;
 int pam_cleanup () ;
 int * pwd ;
 int raise (int) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sleep (int) ;

__attribute__((used)) static void
bail_internal(int sec, int eval, int signo)
{
 struct sigaction sa;

 pam_cleanup();




 (void)sleep(sec);
 if (signo == 0)
  exit(eval);
 else {
  sa.sa_handler = SIG_DFL;
  sa.sa_flags = 0;
  (void)sigemptyset(&sa.sa_mask);
  (void)sigaction(signo, &sa, ((void*)0));
  (void)sigaddset(&sa.sa_mask, signo);
  (void)sigprocmask(SIG_UNBLOCK, &sa.sa_mask, ((void*)0));
  raise(signo);
  exit(128 + signo);
 }
}
