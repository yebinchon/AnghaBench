
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ib_wq_attr {int dummy; } ;
struct ib_wq {TYPE_1__* device; } ;
struct TYPE_2__ {int (* modify_wq ) (struct ib_wq*,struct ib_wq_attr*,int ,int *) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_wq*,struct ib_wq_attr*,int ,int *) ;

int ib_modify_wq(struct ib_wq *wq, struct ib_wq_attr *wq_attr,
   u32 wq_attr_mask)
{
 int err;

 if (!wq->device->modify_wq)
  return -ENOSYS;

 err = wq->device->modify_wq(wq, wq_attr, wq_attr_mask, ((void*)0));
 return err;
}
