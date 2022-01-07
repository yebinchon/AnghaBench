
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct mqueue_notifier {int nt_ksi; } ;
struct mqueue {struct mqueue_notifier* mq_notifier; int mq_mutex; } ;


 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int mtx_assert (int *,int ) ;
 int notifier_delete (struct proc*,struct mqueue_notifier*) ;
 struct mqueue_notifier* notifier_search (struct proc*,int) ;
 int sigqueue_take (int *) ;

__attribute__((used)) static void
notifier_remove(struct proc *p, struct mqueue *mq, int fd)
{
 struct mqueue_notifier *nt;

 mtx_assert(&mq->mq_mutex, MA_OWNED);
 PROC_LOCK(p);
 nt = notifier_search(p, fd);
 if (nt != ((void*)0)) {
  if (mq->mq_notifier == nt)
   mq->mq_notifier = ((void*)0);
  sigqueue_take(&nt->nt_ksi);
  notifier_delete(p, nt);
 }
 PROC_UNLOCK(p);
}
