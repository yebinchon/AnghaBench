
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int obd_name; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (int ) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 int device_printf (int *,char*,int ) ;
 int device_set_ivars (int *,struct ofw_bus_devinfo*) ;
 int free (struct ofw_bus_devinfo*,int ) ;
 struct ofw_bus_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (struct ofw_bus_devinfo*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (struct ofw_bus_devinfo*,scalar_t__) ;
 int ofw_bus_get_node (int *) ;

__attribute__((used)) static int
opal_i2cm_attach(device_t dev)
{
 phandle_t child;
 device_t cdev;
 struct ofw_bus_devinfo *dinfo;

 for (child = OF_child(ofw_bus_get_node(dev)); child != 0;
     child = OF_peer(child)) {
  dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
  if (ofw_bus_gen_setup_devinfo(dinfo, child) != 0) {
   free(dinfo, M_DEVBUF);
   continue;
  }
  cdev = device_add_child(dev, ((void*)0), -1);
  if (cdev == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
       dinfo->obd_name);
   ofw_bus_gen_destroy_devinfo(dinfo);
   free(dinfo, M_DEVBUF);
   continue;
  }
  device_set_ivars(cdev, dinfo);
 }

 return (bus_generic_attach(dev));
}
