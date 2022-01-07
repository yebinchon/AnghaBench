
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct procdesc {int pd_refcount; int pd_lock; TYPE_1__ pd_selinfo; int pd_flags; int pd_pid; struct proc* pd_proc; } ;
struct proc {struct procdesc* p_procdesc; int p_pid; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int PDF_DAEMON ;
 int PD_DAEMON ;
 int PROCDESC_LOCK_INIT (struct procdesc*) ;
 int knlist_init_mtx (int *,int *) ;
 int procdesc_zone ;
 int refcount_init (int *,int) ;
 struct procdesc* uma_zalloc (int ,int) ;

void
procdesc_new(struct proc *p, int flags)
{
 struct procdesc *pd;

 pd = uma_zalloc(procdesc_zone, M_WAITOK | M_ZERO);
 pd->pd_proc = p;
 pd->pd_pid = p->p_pid;
 p->p_procdesc = pd;
 pd->pd_flags = 0;
 if (flags & PD_DAEMON)
  pd->pd_flags |= PDF_DAEMON;
 PROCDESC_LOCK_INIT(pd);
 knlist_init_mtx(&pd->pd_selinfo.si_note, &pd->pd_lock);





 refcount_init(&pd->pd_refcount, 2);
}
