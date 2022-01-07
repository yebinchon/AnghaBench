
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_4__ {scalar_t__ state; } ;


 int DEVICE_SHUTDOWN (TYPE_1__*) ;
 scalar_t__ DS_ATTACHED ;

int
device_shutdown(device_t dev)
{
 if (dev->state < DS_ATTACHED)
  return (0);
 return (DEVICE_SHUTDOWN(dev));
}
