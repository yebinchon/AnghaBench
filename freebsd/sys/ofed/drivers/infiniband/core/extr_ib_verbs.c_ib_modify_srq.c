
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_srq_attr {int dummy; } ;
struct ib_srq {TYPE_1__* device; } ;
typedef enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;
struct TYPE_2__ {int (* modify_srq ) (struct ib_srq*,struct ib_srq_attr*,int,int *) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_srq*,struct ib_srq_attr*,int,int *) ;

int ib_modify_srq(struct ib_srq *srq,
    struct ib_srq_attr *srq_attr,
    enum ib_srq_attr_mask srq_attr_mask)
{
 return srq->device->modify_srq ?
  srq->device->modify_srq(srq, srq_attr, srq_attr_mask, ((void*)0)) :
  -ENOSYS;
}
