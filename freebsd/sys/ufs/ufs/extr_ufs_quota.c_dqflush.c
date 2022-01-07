
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct dquot {size_t dq_type; TYPE_1__* dq_ump; scalar_t__ dq_cnt; } ;
struct dqhash {int dummy; } ;
struct TYPE_2__ {struct vnode** um_quotas; } ;


 int DQH_LOCK () ;
 int DQH_UNLOCK () ;
 int EBUSY ;
 struct dquot* LIST_FIRST (struct dqhash*) ;
 struct dquot* LIST_NEXT (struct dquot*,int ) ;
 int LIST_REMOVE (struct dquot*,int ) ;
 int dq_hash ;
 size_t dqhash ;
 struct dqhash* dqhashtbl ;

__attribute__((used)) static int
dqflush(struct vnode *vp)
{
 struct dquot *dq, *nextdq;
 struct dqhash *dqh;
 int error;






 error = 0;
 DQH_LOCK();
 for (dqh = &dqhashtbl[dqhash]; dqh >= dqhashtbl; dqh--) {
  for (dq = LIST_FIRST(dqh); dq; dq = nextdq) {
   nextdq = LIST_NEXT(dq, dq_hash);
   if (dq->dq_ump->um_quotas[dq->dq_type] != vp)
    continue;
   if (dq->dq_cnt)
    error = EBUSY;
   else {
    LIST_REMOVE(dq, dq_hash);
    dq->dq_ump = ((void*)0);
   }
  }
 }
 DQH_UNLOCK();
 return (error);
}
