
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct sbus_devinfo {struct ofw_bus_devinfo const sdi_obdinfo; } ;
typedef int device_t ;


 struct sbus_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
sbus_get_devinfo(device_t bus, device_t child)
{
 struct sbus_devinfo *sdi;

 sdi = device_get_ivars(child);
 return (&sdi->sdi_obdinfo);
}
