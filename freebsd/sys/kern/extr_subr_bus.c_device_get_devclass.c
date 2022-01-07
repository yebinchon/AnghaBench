
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef int devclass_t ;
struct TYPE_3__ {int devclass; } ;



devclass_t
device_get_devclass(device_t dev)
{
 return (dev->devclass);
}
