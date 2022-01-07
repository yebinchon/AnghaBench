
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int doorbell_lock; scalar_t__ kar; } ;


 int MTHCA_EQ_DB_REQ_NOT ;
 scalar_t__ MTHCA_EQ_DOORBELL ;
 int MTHCA_GET_DOORBELL_LOCK (int *) ;
 int mthca_write64 (int,int ,scalar_t__,int ) ;

__attribute__((used)) static inline void tavor_eq_req_not(struct mthca_dev *dev, int eqn)
{
 mthca_write64(MTHCA_EQ_DB_REQ_NOT | eqn, 0,
        dev->kar + MTHCA_EQ_DOORBELL,
        MTHCA_GET_DOORBELL_LOCK(&dev->doorbell_lock));
}
