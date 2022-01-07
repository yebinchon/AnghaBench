
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct lebuffer_devinfo {struct ofw_bus_devinfo const ldi_obdinfo; } ;
typedef int device_t ;


 struct lebuffer_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
lebuffer_get_devinfo(device_t bus, device_t child)
{
 struct lebuffer_devinfo *ldi;

 ldi = device_get_ivars(child);
 return (&ldi->ldi_obdinfo);
}
