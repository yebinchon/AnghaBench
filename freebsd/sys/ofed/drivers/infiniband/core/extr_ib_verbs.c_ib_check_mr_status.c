
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ib_mr_status {int dummy; } ;
struct ib_mr {TYPE_1__* device; } ;
struct TYPE_2__ {int (* check_mr_status ) (struct ib_mr*,int ,struct ib_mr_status*) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_mr*,int ,struct ib_mr_status*) ;

int ib_check_mr_status(struct ib_mr *mr, u32 check_mask,
         struct ib_mr_status *mr_status)
{
 return mr->device->check_mr_status ?
  mr->device->check_mr_status(mr, check_mask, mr_status) : -ENOSYS;
}
