
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ state; } ;


 int DEVICENAME (TYPE_1__*) ;
 int DEVICE_QUIESCE (TYPE_1__*) ;
 scalar_t__ DS_ATTACHED ;
 scalar_t__ DS_BUSY ;
 int EBUSY ;
 int PDEBUG (char*) ;

int
device_quiesce(device_t dev)
{

 PDEBUG(("%s", DEVICENAME(dev)));
 if (dev->state == DS_BUSY)
  return (EBUSY);
 if (dev->state != DS_ATTACHED)
  return (0);

 return (DEVICE_QUIESCE(dev));
}
