
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; scalar_t__ sa_sigaction; } ;
typedef int __sighandler_t ;


 int SA_SIGINFO ;
 int * SIG_DFL ;
 int * SIG_IGN ;

__attribute__((used)) static bool
sigact_flag_test(const struct sigaction *act, int flag)
{






 return ((act->sa_flags & flag) != 0 && (flag != SA_SIGINFO ||
     ((__sighandler_t *)act->sa_sigaction != SIG_IGN &&
     (__sighandler_t *)act->sa_sigaction != SIG_DFL)));
}
