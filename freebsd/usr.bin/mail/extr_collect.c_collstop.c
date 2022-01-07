
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int sig_t ;


 int SIG_BLOCK ;
 int SIG_DFL ;
 int SIG_UNBLOCK ;
 int colljmp ;
 scalar_t__ colljmp_p ;
 scalar_t__ hadintr ;
 int kill (int ,int) ;
 int longjmp (int ,int) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int signal (int,int ) ;
 int sigprocmask (int ,int *,int *) ;

void
collstop(int s)
{
 sig_t old_action = signal(s, SIG_DFL);
 sigset_t nset;

 (void)sigemptyset(&nset);
 (void)sigaddset(&nset, s);
 (void)sigprocmask(SIG_UNBLOCK, &nset, ((void*)0));
 (void)kill(0, s);
 (void)sigprocmask(SIG_BLOCK, &nset, ((void*)0));
 (void)signal(s, old_action);
 if (colljmp_p) {
  colljmp_p = 0;
  hadintr = 0;
  longjmp(colljmp, 1);
 }
}
