
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct fhc_devinfo {struct ofw_bus_devinfo const fdi_obdinfo; } ;
typedef int device_t ;


 struct fhc_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
fhc_get_devinfo(device_t bus, device_t child)
{
 struct fhc_devinfo *fdi;

 fdi = device_get_ivars(child);
 return (&fdi->fdi_obdinfo);
}
