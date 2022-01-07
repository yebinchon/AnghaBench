
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int obd_name; } ;
typedef scalar_t__ phandle_t ;
typedef int name ;
typedef int * device_t ;


 int M_SMU ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int * device_add_child (int *,int *,int) ;
 int device_printf (int *,char*,int ) ;
 int device_set_ivars (int *,struct ofw_bus_devinfo*) ;
 int free (struct ofw_bus_devinfo*,int ) ;
 struct ofw_bus_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (struct ofw_bus_devinfo*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (struct ofw_bus_devinfo*,scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
smu_attach_i2c(device_t smu, phandle_t i2croot)
{
 phandle_t child;
 device_t cdev;
 struct ofw_bus_devinfo *dinfo;
 char name[32];

 for (child = OF_child(i2croot); child != 0; child = OF_peer(child)) {
  if (OF_getprop(child, "name", name, sizeof(name)) <= 0)
   continue;

  if (strcmp(name, "i2c-bus") != 0 && strcmp(name, "i2c") != 0)
   continue;

  dinfo = malloc(sizeof(struct ofw_bus_devinfo), M_SMU,
      M_WAITOK | M_ZERO);
  if (ofw_bus_gen_setup_devinfo(dinfo, child) != 0) {
   free(dinfo, M_SMU);
   continue;
  }

  cdev = device_add_child(smu, ((void*)0), -1);
  if (cdev == ((void*)0)) {
   device_printf(smu, "<%s>: device_add_child failed\n",
       dinfo->obd_name);
   ofw_bus_gen_destroy_devinfo(dinfo);
   free(dinfo, M_SMU);
   continue;
  }
  device_set_ivars(cdev, dinfo);
 }
}
