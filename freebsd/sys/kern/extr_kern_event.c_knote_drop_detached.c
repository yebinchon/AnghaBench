
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct kqueue {int kq_knhashmask; struct klist* kq_knhash; struct klist* kq_knlist; } ;
struct TYPE_3__ {int filter; } ;
struct knote {int kn_status; int kn_influx; size_t kn_id; TYPE_2__* kn_fop; TYPE_1__ kn_kevent; int * kn_fp; struct kqueue* kn_kq; } ;
struct klist {int dummy; } ;
struct TYPE_4__ {scalar_t__ f_isfd; } ;


 int KASSERT (int,char*) ;
 int KN_DETACHED ;
 size_t KN_HASH (size_t,int ) ;
 int KN_QUEUED ;
 int KQ_LOCK (struct kqueue*) ;
 int KQ_NOTOWNED (struct kqueue*) ;
 int KQ_UNLOCK_FLUX (struct kqueue*) ;
 int SLIST_EMPTY (struct klist*) ;
 int SLIST_REMOVE (struct klist*,struct knote*,int ,int ) ;
 int fdrop (int *,struct thread*) ;
 int kn_link ;
 int knote ;
 int knote_dequeue (struct knote*) ;
 int knote_free (struct knote*) ;
 int kqueue_fo_release (int ) ;

__attribute__((used)) static void
knote_drop_detached(struct knote *kn, struct thread *td)
{
 struct kqueue *kq;
 struct klist *list;

 kq = kn->kn_kq;

 KASSERT((kn->kn_status & KN_DETACHED) != 0,
     ("knote %p still attached", kn));
 KQ_NOTOWNED(kq);

 KQ_LOCK(kq);
 KASSERT(kn->kn_influx == 1,
     ("knote_drop called on %p with influx %d", kn, kn->kn_influx));

 if (kn->kn_fop->f_isfd)
  list = &kq->kq_knlist[kn->kn_id];
 else
  list = &kq->kq_knhash[KN_HASH(kn->kn_id, kq->kq_knhashmask)];

 if (!SLIST_EMPTY(list))
  SLIST_REMOVE(list, kn, knote, kn_link);
 if (kn->kn_status & KN_QUEUED)
  knote_dequeue(kn);
 KQ_UNLOCK_FLUX(kq);

 if (kn->kn_fop->f_isfd) {
  fdrop(kn->kn_fp, td);
  kn->kn_fp = ((void*)0);
 }
 kqueue_fo_release(kn->kn_kevent.filter);
 kn->kn_fop = ((void*)0);
 knote_free(kn);
}
