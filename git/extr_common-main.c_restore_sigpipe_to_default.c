
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGPIPE ;
 int SIG_DFL ;
 int SIG_UNBLOCK ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void restore_sigpipe_to_default(void)
{
 sigset_t unblock;

 sigemptyset(&unblock);
 sigaddset(&unblock, SIGPIPE);
 sigprocmask(SIG_UNBLOCK, &unblock, ((void*)0));
 signal(SIGPIPE, SIG_DFL);
}
