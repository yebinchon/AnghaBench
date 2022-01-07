
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int kq_count; int kq_head; } ;
struct knote {int kn_status; struct kqueue* kn_kq; } ;


 int KASSERT (int,char*) ;
 int KN_QUEUED ;
 int KQ_OWNED (struct kqueue*) ;
 int TAILQ_REMOVE (int *,struct knote*,int ) ;
 int kn_tqe ;

__attribute__((used)) static void
knote_dequeue(struct knote *kn)
{
 struct kqueue *kq = kn->kn_kq;

 KQ_OWNED(kn->kn_kq);
 KASSERT(kn->kn_status & KN_QUEUED, ("knote not queued"));

 TAILQ_REMOVE(&kq->kq_head, kn, kn_tqe);
 kn->kn_status &= ~KN_QUEUED;
 kq->kq_count--;
}
