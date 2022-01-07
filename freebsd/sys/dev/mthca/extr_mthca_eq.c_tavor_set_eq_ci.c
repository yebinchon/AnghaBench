
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_eq {int eqn; int nent; } ;
struct mthca_dev {int doorbell_lock; scalar_t__ kar; } ;


 int MTHCA_EQ_DB_SET_CI ;
 scalar_t__ MTHCA_EQ_DOORBELL ;
 int MTHCA_GET_DOORBELL_LOCK (int *) ;
 int mthca_write64 (int,int,scalar_t__,int ) ;
 int wmb () ;

__attribute__((used)) static inline void tavor_set_eq_ci(struct mthca_dev *dev, struct mthca_eq *eq, u32 ci)
{
 wmb();
 mthca_write64(MTHCA_EQ_DB_SET_CI | eq->eqn, ci & (eq->nent - 1),
        dev->kar + MTHCA_EQ_DOORBELL,
        MTHCA_GET_DOORBELL_LOCK(&dev->doorbell_lock));
}
