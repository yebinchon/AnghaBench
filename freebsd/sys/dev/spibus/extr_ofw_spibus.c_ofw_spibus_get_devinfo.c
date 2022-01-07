
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct ofw_spibus_devinfo {struct ofw_bus_devinfo const opd_obdinfo; } ;
typedef int device_t ;


 struct ofw_spibus_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
ofw_spibus_get_devinfo(device_t bus, device_t dev)
{
 struct ofw_spibus_devinfo *dinfo;

 dinfo = device_get_ivars(dev);
 return (&dinfo->opd_obdinfo);
}
