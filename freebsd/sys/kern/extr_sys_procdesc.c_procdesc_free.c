
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct procdesc {int pd_flags; TYPE_1__ pd_selinfo; int * pd_proc; int pd_refcount; } ;


 int KASSERT (int,char*) ;
 int PDF_CLOSED ;
 int PROCDESC_LOCK_DESTROY (struct procdesc*) ;
 int knlist_destroy (int *) ;
 int procdesc_zone ;
 scalar_t__ refcount_release (int *) ;
 int uma_zfree (int ,struct procdesc*) ;

__attribute__((used)) static void
procdesc_free(struct procdesc *pd)
{







 if (refcount_release(&pd->pd_refcount)) {
  KASSERT(pd->pd_proc == ((void*)0),
      ("procdesc_free: pd_proc != NULL"));
  KASSERT((pd->pd_flags & PDF_CLOSED),
      ("procdesc_free: !PDF_CLOSED"));

  knlist_destroy(&pd->pd_selinfo.si_note);
  PROCDESC_LOCK_DESTROY(pd);
  uma_zfree(procdesc_zone, pd);
 }
}
