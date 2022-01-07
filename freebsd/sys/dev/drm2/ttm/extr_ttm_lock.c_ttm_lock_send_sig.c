
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 struct proc* curproc ;
 int kern_psignal (struct proc*,int) ;

__attribute__((used)) static void
ttm_lock_send_sig(int signo)
{
 struct proc *p;

 p = curproc;
 PROC_LOCK(p);
 kern_psignal(p, signo);
 PROC_UNLOCK(p);
}
