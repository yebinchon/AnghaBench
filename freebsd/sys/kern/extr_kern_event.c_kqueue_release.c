
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue {int kq_refcnt; } ;


 int KQ_LOCK (struct kqueue*) ;
 int KQ_OWNED (struct kqueue*) ;
 int KQ_UNLOCK (struct kqueue*) ;
 int wakeup (int*) ;

__attribute__((used)) static void
kqueue_release(struct kqueue *kq, int locked)
{
 if (locked)
  KQ_OWNED(kq);
 else
  KQ_LOCK(kq);
 kq->kq_refcnt--;
 if (kq->kq_refcnt == 1)
  wakeup(&kq->kq_refcnt);
 if (!locked)
  KQ_UNLOCK(kq);
}
