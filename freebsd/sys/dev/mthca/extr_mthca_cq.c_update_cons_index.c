
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int doorbell_lock; scalar_t__ kar; } ;
struct mthca_cq {int cqn; int cons_index; int * set_ci_db; } ;


 scalar_t__ MTHCA_CQ_DOORBELL ;
 int MTHCA_GET_DOORBELL_LOCK (int *) ;
 int MTHCA_TAVOR_CQ_DB_INC_CI ;
 int cpu_to_be32 (int ) ;
 int mmiowb () ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mthca_write64 (int,int,scalar_t__,int ) ;
 int wmb () ;

__attribute__((used)) static inline void update_cons_index(struct mthca_dev *dev, struct mthca_cq *cq,
         int incr)
{
 if (mthca_is_memfree(dev)) {
  *cq->set_ci_db = cpu_to_be32(cq->cons_index);
  wmb();
 } else {
  mthca_write64(MTHCA_TAVOR_CQ_DB_INC_CI | cq->cqn, incr - 1,
         dev->kar + MTHCA_CQ_DOORBELL,
         MTHCA_GET_DOORBELL_LOCK(&dev->doorbell_lock));




  mmiowb();
 }
}
