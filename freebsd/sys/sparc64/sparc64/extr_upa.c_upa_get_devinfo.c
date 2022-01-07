
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct upa_devinfo {struct ofw_bus_devinfo const udi_obdinfo; } ;
typedef int device_t ;


 struct upa_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
upa_get_devinfo(device_t dev, device_t child)
{
 struct upa_devinfo *udi;

 udi = device_get_ivars(child);
 return (&udi->udi_obdinfo);
}
