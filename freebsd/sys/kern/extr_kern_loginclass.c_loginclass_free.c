
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loginclass {int lc_racct; int lc_refcount; } ;


 int LIST_REMOVE (struct loginclass*,int ) ;
 int M_LOGINCLASS ;
 int free (struct loginclass*,int ) ;
 int lc_next ;
 int loginclasses_lock ;
 int racct_destroy (int *) ;
 int refcount_release (int *) ;
 scalar_t__ refcount_release_if_not_last (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

void
loginclass_free(struct loginclass *lc)
{

 if (refcount_release_if_not_last(&lc->lc_refcount))
  return;

 rw_wlock(&loginclasses_lock);
 if (!refcount_release(&lc->lc_refcount)) {
  rw_wunlock(&loginclasses_lock);
  return;
 }

 racct_destroy(&lc->lc_racct);
 LIST_REMOVE(lc, lc_next);
 rw_wunlock(&loginclasses_lock);

 free(lc, M_LOGINCLASS);
}
