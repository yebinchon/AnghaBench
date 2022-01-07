
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct knote {int kn_status; TYPE_1__* kn_kq; int * kn_knlist; } ;
struct knlist {int kl_list; int kl_lockarg; int (* kl_lock ) (int ) ;} ;
struct TYPE_3__ {int kq_lock; } ;


 int KASSERT (int,char*) ;
 int KNL_ASSERT_LOCK (struct knlist*,int) ;
 int KN_DETACHED ;
 int KQ_LOCK (TYPE_1__*) ;
 int KQ_UNLOCK (TYPE_1__*) ;
 int MA_NOTOWNED ;
 int MA_OWNED ;
 int SLIST_REMOVE (int *,struct knote*,int ,int ) ;
 scalar_t__ kn_in_flux (struct knote*) ;
 int kn_list_unlock (struct knlist*) ;
 int kn_selnext ;
 int knote ;
 int mtx_assert (int *,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
knlist_remove_kq(struct knlist *knl, struct knote *kn, int knlislocked,
    int kqislocked)
{

 KASSERT(!kqislocked || knlislocked, ("kq locked w/o knl locked"));
 KNL_ASSERT_LOCK(knl, knlislocked);
 mtx_assert(&kn->kn_kq->kq_lock, kqislocked ? MA_OWNED : MA_NOTOWNED);
 KASSERT(kqislocked || kn_in_flux(kn), ("knote %p not in flux", kn));
 KASSERT((kn->kn_status & KN_DETACHED) == 0,
     ("knote %p was already detached", kn));
 if (!knlislocked)
  knl->kl_lock(knl->kl_lockarg);
 SLIST_REMOVE(&knl->kl_list, kn, knote, kn_selnext);
 kn->kn_knlist = ((void*)0);
 if (!knlislocked)
  kn_list_unlock(knl);
 if (!kqislocked)
  KQ_LOCK(kn->kn_kq);
 kn->kn_status |= KN_DETACHED;
 if (!kqislocked)
  KQ_UNLOCK(kn->kn_kq);
}
