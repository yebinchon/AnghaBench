
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_ah_attr {int dummy; } ;
struct ib_ah {TYPE_1__* device; } ;
struct TYPE_2__ {int (* modify_ah ) (struct ib_ah*,struct ib_ah_attr*) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_ah*,struct ib_ah_attr*) ;

int ib_modify_ah(struct ib_ah *ah, struct ib_ah_attr *ah_attr)
{
 return ah->device->modify_ah ?
  ah->device->modify_ah(ah, ah_attr) :
  -ENOSYS;
}
