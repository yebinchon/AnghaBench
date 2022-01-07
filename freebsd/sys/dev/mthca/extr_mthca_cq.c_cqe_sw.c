
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_cqe {int owner; } ;


 int MTHCA_CQ_ENTRY_OWNER_HW ;

__attribute__((used)) static inline struct mthca_cqe *cqe_sw(struct mthca_cqe *cqe)
{
 return MTHCA_CQ_ENTRY_OWNER_HW & cqe->owner ? ((void*)0) : cqe;
}
