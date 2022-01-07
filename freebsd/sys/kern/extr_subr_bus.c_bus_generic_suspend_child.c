
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_5__ {int flags; } ;


 int DEVICE_SUSPEND (TYPE_1__*) ;
 int DF_SUSPENDED ;

int
bus_generic_suspend_child(device_t dev, device_t child)
{
 int error;

 error = DEVICE_SUSPEND(child);

 if (error == 0)
  child->flags |= DF_SUSPENDED;

 return (error);
}
