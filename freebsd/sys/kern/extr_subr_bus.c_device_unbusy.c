
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_4__ {scalar_t__ busy; scalar_t__ state; struct TYPE_4__* parent; } ;


 scalar_t__ DS_ATTACHED ;
 scalar_t__ DS_ATTACHING ;
 scalar_t__ DS_BUSY ;
 int device_get_nameunit (TYPE_1__*) ;
 int panic (char*,int ) ;

void
device_unbusy(device_t dev)
{
 if (dev->busy != 0 && dev->state != DS_BUSY &&
     dev->state != DS_ATTACHING)
  panic("device_unbusy: called for non-busy device %s",
      device_get_nameunit(dev));
 dev->busy--;
 if (dev->busy == 0) {
  if (dev->parent)
   device_unbusy(dev->parent);
  if (dev->state == DS_BUSY)
   dev->state = DS_ATTACHED;
 }
}
