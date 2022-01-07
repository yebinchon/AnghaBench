
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ib_cq {TYPE_1__* device; } ;
struct TYPE_2__ {int (* modify_cq ) (struct ib_cq*,int ,int ) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_cq*,int ,int ) ;

int ib_modify_cq(struct ib_cq *cq, u16 cq_count, u16 cq_period)
{
 return cq->device->modify_cq ?
  cq->device->modify_cq(cq, cq_count, cq_period) : -ENOSYS;
}
