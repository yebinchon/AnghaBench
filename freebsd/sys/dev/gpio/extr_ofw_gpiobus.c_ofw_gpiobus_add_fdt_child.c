
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_ivar {int npins; int * pins; } ;
struct ofw_gpiobus_devinfo {struct gpiobus_ivar opd_dinfo; } ;
typedef int phandle_t ;
typedef int * device_t ;


 int GPIOBUS_PIN_SETNAME (int *,int ,int ) ;
 int * device_add_child (int *,char const*,int) ;
 int device_delete_child (int *,int *) ;
 int device_get_nameunit (int *) ;
 scalar_t__ device_probe_and_attach (int *) ;
 int * ofw_bus_find_child_device_by_phandle (int *,int ) ;
 int ofw_gpiobus_destroy_devinfo (int *,struct ofw_gpiobus_devinfo*) ;
 struct ofw_gpiobus_devinfo* ofw_gpiobus_setup_devinfo (int *,int *,int ) ;

device_t
ofw_gpiobus_add_fdt_child(device_t bus, const char *drvname, phandle_t child)
{
 device_t childdev;
 int i;
 struct gpiobus_ivar *devi;
 struct ofw_gpiobus_devinfo *dinfo;





 childdev = ofw_bus_find_child_device_by_phandle(bus, child);
 if (childdev != ((void*)0))
  return (childdev);




 childdev = device_add_child(bus, drvname, -1);
 if (childdev == ((void*)0))
  return (((void*)0));
 dinfo = ofw_gpiobus_setup_devinfo(bus, childdev, child);
 if (dinfo == ((void*)0)) {
  device_delete_child(bus, childdev);
  return (((void*)0));
 }
 if (device_probe_and_attach(childdev) != 0) {
  ofw_gpiobus_destroy_devinfo(bus, dinfo);
  device_delete_child(bus, childdev);
  return (((void*)0));
 }

 devi = &dinfo->opd_dinfo;
 for (i = 0; i < devi->npins; i++)
  GPIOBUS_PIN_SETNAME(bus, devi->pins[i],
      device_get_nameunit(childdev));

 return (childdev);
}
