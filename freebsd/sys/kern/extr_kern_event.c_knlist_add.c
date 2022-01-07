
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_status; int kn_kq; struct knlist* kn_knlist; } ;
struct knlist {int kl_lockarg; int (* kl_unlock ) (int ) ;int kl_list; int (* kl_lock ) (int ) ;} ;


 int KASSERT (int,char*) ;
 int KNL_ASSERT_LOCK (struct knlist*,int) ;
 int KN_DETACHED ;
 int KQ_LOCK (int ) ;
 int KQ_NOTOWNED (int ) ;
 int KQ_UNLOCK (int ) ;
 int SLIST_INSERT_HEAD (int *,struct knote*,int ) ;
 int kn_in_flux (struct knote*) ;
 int kn_selnext ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void
knlist_add(struct knlist *knl, struct knote *kn, int islocked)
{

 KNL_ASSERT_LOCK(knl, islocked);
 KQ_NOTOWNED(kn->kn_kq);
 KASSERT(kn_in_flux(kn), ("knote %p not in flux", kn));
 KASSERT((kn->kn_status & KN_DETACHED) != 0,
     ("knote %p was not detached", kn));
 if (!islocked)
  knl->kl_lock(knl->kl_lockarg);
 SLIST_INSERT_HEAD(&knl->kl_list, kn, kn_selnext);
 if (!islocked)
  knl->kl_unlock(knl->kl_lockarg);
 KQ_LOCK(kn->kn_kq);
 kn->kn_knlist = knl;
 kn->kn_status &= ~KN_DETACHED;
 KQ_UNLOCK(kn->kn_kq);
}
