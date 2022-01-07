
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int driver_t ;
typedef TYPE_1__* device_t ;
struct TYPE_3__ {int * driver; } ;



driver_t *
device_get_driver(device_t dev)
{
 return (dev->driver);
}
