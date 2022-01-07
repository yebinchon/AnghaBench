
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int curthread ;
 int kern_sigprocmask (int ,int ,int *,int *,int ) ;

__attribute__((used)) static void
autofs_restore_sigmask(sigset_t *set)
{

 kern_sigprocmask(curthread, SIG_SETMASK, set, ((void*)0), 0);
}
