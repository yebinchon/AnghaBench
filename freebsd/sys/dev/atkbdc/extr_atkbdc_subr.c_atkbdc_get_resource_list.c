
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource_list {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct resource_list resources; } ;
typedef TYPE_1__ atkbdc_device_t ;


 scalar_t__ device_get_ivars (int ) ;

struct resource_list
*atkbdc_get_resource_list(device_t bus, device_t dev)
{
 atkbdc_device_t *ivar;

 ivar = (atkbdc_device_t *)device_get_ivars(dev);
 return &ivar->resources;
}
