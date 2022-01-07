
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct ofw_pwmbus_ivars {struct ofw_bus_devinfo const devinfo; } ;
typedef int device_t ;


 struct ofw_pwmbus_ivars* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
ofw_pwmbus_get_devinfo(device_t bus, device_t dev)
{
 struct ofw_pwmbus_ivars *ivars;

 ivars = device_get_ivars(dev);
 return (&ivars->devinfo);
}
