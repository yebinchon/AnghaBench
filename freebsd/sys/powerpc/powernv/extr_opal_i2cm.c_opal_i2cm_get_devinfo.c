
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
typedef int device_t ;


 struct ofw_bus_devinfo const* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
opal_i2cm_get_devinfo(device_t dev, device_t child)
{
        return (device_get_ivars(child));
}
