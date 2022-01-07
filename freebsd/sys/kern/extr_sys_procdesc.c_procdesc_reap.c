
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procdesc {int * pd_proc; } ;
struct proc {struct procdesc* p_procdesc; } ;


 int KASSERT (int ,char*) ;
 int SA_XLOCKED ;
 int procdesc_free (struct procdesc*) ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;

void
procdesc_reap(struct proc *p)
{
 struct procdesc *pd;

 sx_assert(&proctree_lock, SA_XLOCKED);
 KASSERT(p->p_procdesc != ((void*)0), ("procdesc_reap: p_procdesc == NULL"));

 pd = p->p_procdesc;
 pd->pd_proc = ((void*)0);
 p->p_procdesc = ((void*)0);
 procdesc_free(pd);
}
