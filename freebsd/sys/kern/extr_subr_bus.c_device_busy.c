
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ busy; struct TYPE_3__* parent; } ;


 scalar_t__ DS_ATTACHED ;
 scalar_t__ DS_ATTACHING ;
 scalar_t__ DS_BUSY ;
 int panic (char*) ;

void
device_busy(device_t dev)
{
 if (dev->state < DS_ATTACHING)
  panic("device_busy: called for unattached device");
 if (dev->busy == 0 && dev->parent)
  device_busy(dev->parent);
 dev->busy++;
 if (dev->state == DS_ATTACHED)
  dev->state = DS_BUSY;
}
