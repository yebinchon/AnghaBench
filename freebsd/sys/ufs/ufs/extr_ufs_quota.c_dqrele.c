
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct dquot {int dq_cnt; int dq_flags; } ;


 int DQH_LOCK () ;
 int DQH_UNLOCK () ;
 int DQ_MOD ;
 int KASSERT (int,char*) ;
 struct dquot* NODQUOT ;
 int TAILQ_INSERT_TAIL (int *,struct dquot*,int ) ;
 int dq_freelist ;
 int dqfreelist ;
 int dqsync (struct vnode*,struct dquot*) ;

void
dqrele(struct vnode *vp, struct dquot *dq)
{

 if (dq == NODQUOT)
  return;
 DQH_LOCK();
 KASSERT(dq->dq_cnt > 0, ("Lost dq %p reference 1", dq));
 if (dq->dq_cnt > 1) {
  dq->dq_cnt--;
  DQH_UNLOCK();
  return;
 }
 DQH_UNLOCK();
sync:
 (void) dqsync(vp, dq);

 DQH_LOCK();
 KASSERT(dq->dq_cnt > 0, ("Lost dq %p reference 2", dq));
 if (--dq->dq_cnt > 0)
 {
  DQH_UNLOCK();
  return;
 }







 if ((dq->dq_flags & DQ_MOD) != 0) {
  dq->dq_cnt++;
  DQH_UNLOCK();
  goto sync;
 }
 TAILQ_INSERT_TAIL(&dqfreelist, dq, dq_freelist);
 DQH_UNLOCK();
}
