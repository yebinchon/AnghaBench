
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int sigset_t ;


 int SIG_SETMASK ;
 struct thread* curthread ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;

void
newnfs_restore_sigmask(struct thread *td, sigset_t *set)
{
 if (td == ((void*)0))
  td = curthread;
 kern_sigprocmask(td, SIG_SETMASK, set, ((void*)0), 0);
}
