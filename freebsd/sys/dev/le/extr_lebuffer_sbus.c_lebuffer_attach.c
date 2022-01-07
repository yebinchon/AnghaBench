
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int obd_name; } ;
struct lebuffer_devinfo {TYPE_1__ ldi_obdinfo; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 scalar_t__ OF_child (int ) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 int device_printf (int *,char*,int ) ;
 int device_set_ivars (int *,struct lebuffer_devinfo*) ;
 int lebuffer_destroy_dinfo (struct lebuffer_devinfo*) ;
 struct lebuffer_devinfo* lebuffer_setup_dinfo (int *,scalar_t__) ;
 int ofw_bus_get_node (int *) ;

__attribute__((used)) static int
lebuffer_attach(device_t dev)
{
 struct lebuffer_devinfo *ldi;
 device_t cdev;
 phandle_t child;
 int children;

 children = 0;
 for (child = OF_child(ofw_bus_get_node(dev)); child != 0;
     child = OF_peer(child)) {
  if ((ldi = lebuffer_setup_dinfo(dev, child)) == ((void*)0))
   continue;
  if (children != 0) {
   device_printf(dev,
       "<%s>: only one child per buffer supported\n",
       ldi->ldi_obdinfo.obd_name);
   lebuffer_destroy_dinfo(ldi);
   continue;
  }
  if ((cdev = device_add_child(dev, ((void*)0), -1)) == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
       ldi->ldi_obdinfo.obd_name);
   lebuffer_destroy_dinfo(ldi);
   continue;
  }
  device_set_ivars(cdev, ldi);
  children++;
 }
 return (bus_generic_attach(dev));
}
