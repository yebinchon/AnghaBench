
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct ib_device {scalar_t__ reg_state; TYPE_1__ dev; } ;


 scalar_t__ IB_DEV_UNINITIALIZED ;
 scalar_t__ IB_DEV_UNREGISTERED ;
 int WARN_ON (int) ;
 int kobject_put (int *) ;

void ib_dealloc_device(struct ib_device *device)
{
 WARN_ON(device->reg_state != IB_DEV_UNREGISTERED &&
  device->reg_state != IB_DEV_UNINITIALIZED);
 kobject_put(&device->dev.kobj);
}
