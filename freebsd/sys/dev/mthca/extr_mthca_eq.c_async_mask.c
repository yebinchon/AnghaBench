
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mthca_dev {int mthca_flags; } ;


 int MTHCA_ASYNC_EVENT_MASK ;
 int MTHCA_FLAG_SRQ ;
 int MTHCA_SRQ_EVENT_MASK ;

__attribute__((used)) static inline u64 async_mask(struct mthca_dev *dev)
{
 return dev->mthca_flags & MTHCA_FLAG_SRQ ?
  MTHCA_ASYNC_EVENT_MASK | MTHCA_SRQ_EVENT_MASK :
  MTHCA_ASYNC_EVENT_MASK;
}
