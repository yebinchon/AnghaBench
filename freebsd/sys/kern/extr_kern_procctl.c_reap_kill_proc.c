
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct procctl_reaper_kill {int rk_fpid; int rk_killed; int rk_sig; } ;
struct proc {int p_pid; } ;
typedef int ksiginfo_t ;


 int ESRCH ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int p_cansignal (struct thread*,struct proc*,int ) ;
 int pksignal (struct proc*,int ,int *) ;

__attribute__((used)) static void
reap_kill_proc(struct thread *td, struct proc *p2, ksiginfo_t *ksi,
    struct procctl_reaper_kill *rk, int *error)
{
 int error1;

 PROC_LOCK(p2);
 error1 = p_cansignal(td, p2, rk->rk_sig);
 if (error1 == 0) {
  pksignal(p2, rk->rk_sig, ksi);
  rk->rk_killed++;
  *error = error1;
 } else if (*error == ESRCH) {
  rk->rk_fpid = p2->p_pid;
  *error = error1;
 }
 PROC_UNLOCK(p2);
}
