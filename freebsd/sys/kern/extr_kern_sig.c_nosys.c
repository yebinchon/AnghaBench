
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct thread {TYPE_1__ td_sa; struct proc* td_proc; } ;
struct proc {int p_pid; char* p_comm; } ;
struct nosys_args {int dummy; } ;


 int ENOSYS ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGSYS ;
 int kern_lognosys ;
 int printf (char*,int,char*,int) ;
 int tdsignal (struct thread*,int ) ;
 int uprintf (char*,int,char*,int) ;

int
nosys(struct thread *td, struct nosys_args *args)
{
 struct proc *p;

 p = td->td_proc;

 PROC_LOCK(p);
 tdsignal(td, SIGSYS);
 PROC_UNLOCK(p);
 if (kern_lognosys == 1 || kern_lognosys == 3) {
  uprintf("pid %d comm %s: nosys %d\n", p->p_pid, p->p_comm,
      td->td_sa.code);
 }
 if (kern_lognosys == 2 || kern_lognosys == 3) {
  printf("pid %d comm %s: nosys %d\n", p->p_pid, p->p_comm,
      td->td_sa.code);
 }
 return (ENOSYS);
}
