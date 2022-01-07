
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigacts {int ps_mtx; int ps_refcnt; } ;


 int M_SUBPROC ;
 int free (struct sigacts*,int ) ;
 int mtx_destroy (int *) ;
 scalar_t__ refcount_release (int *) ;

void
sigacts_free(struct sigacts *ps)
{

 if (refcount_release(&ps->ps_refcnt) == 0)
  return;
 mtx_destroy(&ps->ps_mtx);
 free(ps, M_SUBPROC);
}
