
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct macio_devinfo {struct ofw_bus_devinfo const mdi_obdinfo; } ;
typedef int device_t ;


 struct macio_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
macio_get_devinfo(device_t dev, device_t child)
{
 struct macio_devinfo *dinfo;

 dinfo = device_get_ivars(child);
 return (&dinfo->mdi_obdinfo);
}
