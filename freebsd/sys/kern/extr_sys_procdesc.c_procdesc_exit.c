
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct procdesc {int pd_flags; TYPE_1__ pd_selinfo; int * pd_proc; int pd_xstat; } ;
struct proc {scalar_t__ p_pptr; scalar_t__ p_reaper; struct procdesc* p_procdesc; int p_xsig; int p_xexit; } ;


 int KASSERT (int,char*) ;
 int KNOTE_LOCKED (int *,int ) ;
 int KW_EXITCODE (int ,int ) ;
 int MA_OWNED ;
 int NOTE_EXIT ;
 int PDF_CLOSED ;
 int PDF_EXITED ;
 int PDF_SELECTED ;
 int PROCDESC_LOCK (struct procdesc*) ;
 int PROCDESC_UNLOCK (struct procdesc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int SA_XLOCKED ;
 int procdesc_free (struct procdesc*) ;
 int proctree_lock ;
 int selwakeup (TYPE_1__*) ;
 int sx_assert (int *,int ) ;

int
procdesc_exit(struct proc *p)
{
 struct procdesc *pd;

 sx_assert(&proctree_lock, SA_XLOCKED);
 PROC_LOCK_ASSERT(p, MA_OWNED);
 KASSERT(p->p_procdesc != ((void*)0), ("procdesc_exit: p_procdesc NULL"));

 pd = p->p_procdesc;

 PROCDESC_LOCK(pd);
 KASSERT((pd->pd_flags & PDF_CLOSED) == 0 || p->p_pptr == p->p_reaper,
     ("procdesc_exit: closed && parent not reaper"));

 pd->pd_flags |= PDF_EXITED;
 pd->pd_xstat = KW_EXITCODE(p->p_xexit, p->p_xsig);







 if (pd->pd_flags & PDF_CLOSED) {
  PROCDESC_UNLOCK(pd);
  pd->pd_proc = ((void*)0);
  p->p_procdesc = ((void*)0);
  procdesc_free(pd);
  return (1);
 }
 if (pd->pd_flags & PDF_SELECTED) {
  pd->pd_flags &= ~PDF_SELECTED;
  selwakeup(&pd->pd_selinfo);
 }
 KNOTE_LOCKED(&pd->pd_selinfo.si_note, NOTE_EXIT);
 PROCDESC_UNLOCK(pd);
 return (0);
}
