
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int kobj_t ;
typedef TYPE_1__* device_t ;
struct TYPE_11__ {int children; scalar_t__ parent; scalar_t__ devclass; } ;


 int BUS_CHILD_DELETED (TYPE_1__*,TYPE_1__*) ;
 int DEVICENAME (TYPE_1__*) ;
 int M_BUS ;
 int PDEBUG (char*) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int bus_data_devices ;
 int bus_data_generation_update () ;
 int devclass_delete_device (scalar_t__,TYPE_1__*) ;
 int device_detach (TYPE_1__*) ;
 int devlink ;
 int kobj_delete (int ,int ) ;
 int link ;

int
device_delete_child(device_t dev, device_t child)
{
 int error;
 device_t grandchild;

 PDEBUG(("%s from %s", DEVICENAME(child), DEVICENAME(dev)));


 if ((error = device_detach(child)) != 0)
  return (error);


 while ((grandchild = TAILQ_FIRST(&child->children)) != ((void*)0)) {
  error = device_delete_child(child, grandchild);
  if (error)
   return (error);
 }

 if (child->devclass)
  devclass_delete_device(child->devclass, child);
 if (child->parent)
  BUS_CHILD_DELETED(dev, child);
 TAILQ_REMOVE(&dev->children, child, link);
 TAILQ_REMOVE(&bus_data_devices, child, devlink);
 kobj_delete((kobj_t) child, M_BUS);

 bus_data_generation_update();
 return (0);
}
