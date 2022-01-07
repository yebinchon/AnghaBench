
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct procdesc {int pd_flags; struct proc* pd_proc; } ;
struct proc {scalar_t__ p_state; int p_flag; TYPE_1__* p_reaper; int p_oppid; int p_sigparent; int * p_procdesc; } ;
struct file {scalar_t__ f_type; struct procdesc* f_data; int * f_ops; } ;
struct TYPE_3__ {int p_pid; } ;


 int AUDIT_ARG_PROCESS (struct proc*) ;
 scalar_t__ DTYPE_PROCDESC ;
 int KASSERT (int,char*) ;
 int PDF_CLOSED ;
 int PDF_DAEMON ;
 int PROCDESC_LOCK (struct procdesc*) ;
 int PROCDESC_UNLOCK (struct procdesc*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ PRS_ZOMBIE ;
 int P_TRACED ;
 int SIGCHLD ;
 int SIGKILL ;
 int badfileops ;
 int curthread ;
 int kern_psignal (struct proc*,int ) ;
 int proc_add_orphan (struct proc*,TYPE_1__*) ;
 int proc_clear_orphan (struct proc*) ;
 int proc_reap (int ,struct proc*,int *,int ) ;
 int proc_reparent (struct proc*,TYPE_1__*,int) ;
 int procdesc_free (struct procdesc*) ;
 int proctree_lock ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
procdesc_close(struct file *fp, struct thread *td)
{
 struct procdesc *pd;
 struct proc *p;

 KASSERT(fp->f_type == DTYPE_PROCDESC, ("procdesc_close: !procdesc"));

 pd = fp->f_data;
 fp->f_ops = &badfileops;
 fp->f_data = ((void*)0);

 sx_xlock(&proctree_lock);
 PROCDESC_LOCK(pd);
 pd->pd_flags |= PDF_CLOSED;
 PROCDESC_UNLOCK(pd);
 p = pd->pd_proc;
 if (p == ((void*)0)) {




  sx_xunlock(&proctree_lock);
 } else {
  PROC_LOCK(p);
  AUDIT_ARG_PROCESS(p);
  if (p->p_state == PRS_ZOMBIE) {






   proc_reap(curthread, p, ((void*)0), 0);
  } else {







   pd->pd_proc = ((void*)0);
   p->p_procdesc = ((void*)0);
   procdesc_free(pd);






   p->p_sigparent = SIGCHLD;
   if ((p->p_flag & P_TRACED) == 0) {
    proc_reparent(p, p->p_reaper, 1);
   } else {
    proc_clear_orphan(p);
    p->p_oppid = p->p_reaper->p_pid;
    proc_add_orphan(p, p->p_reaper);
   }
   if ((pd->pd_flags & PDF_DAEMON) == 0)
    kern_psignal(p, SIGKILL);
   PROC_UNLOCK(p);
   sx_xunlock(&proctree_lock);
  }
 }




 procdesc_free(pd);
 return (0);
}
