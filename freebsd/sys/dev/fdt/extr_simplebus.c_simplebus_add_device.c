
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int obd_name; } ;
struct simplebus_devinfo {TYPE_1__ obdinfo; int rl; } ;
typedef int phandle_t ;
typedef int * device_t ;


 int M_DEVBUF ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_printf (int *,char*,int ) ;
 int device_set_ivars (int *,struct simplebus_devinfo*) ;
 int free (struct simplebus_devinfo*,int ) ;
 int ofw_bus_gen_destroy_devinfo (TYPE_1__*) ;
 int resource_list_free (int *) ;
 struct simplebus_devinfo* simplebus_setup_dinfo (int *,int ,struct simplebus_devinfo*) ;

device_t
simplebus_add_device(device_t dev, phandle_t node, u_int order,
    const char *name, int unit, struct simplebus_devinfo *di)
{
 struct simplebus_devinfo *ndi;
 device_t cdev;

 if ((ndi = simplebus_setup_dinfo(dev, node, di)) == ((void*)0))
  return (((void*)0));
 cdev = device_add_child_ordered(dev, order, name, unit);
 if (cdev == ((void*)0)) {
  device_printf(dev, "<%s>: device_add_child failed\n",
      ndi->obdinfo.obd_name);
  resource_list_free(&ndi->rl);
  ofw_bus_gen_destroy_devinfo(&ndi->obdinfo);
  if (di == ((void*)0))
   free(ndi, M_DEVBUF);
  return (((void*)0));
 }
 device_set_ivars(cdev, ndi);

 return(cdev);
}
