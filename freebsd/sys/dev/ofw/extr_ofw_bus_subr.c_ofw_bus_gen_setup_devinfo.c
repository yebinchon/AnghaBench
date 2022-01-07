
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int obd_node; int obd_status; int obd_model; int obd_type; int obd_compat; int obd_name; } ;
typedef int phandle_t ;


 int EINVAL ;
 int ENOMEM ;
 int OF_getprop_alloc (int ,char*,void**) ;

int
ofw_bus_gen_setup_devinfo(struct ofw_bus_devinfo *obd, phandle_t node)
{

 if (obd == ((void*)0))
  return (ENOMEM);

 if ((OF_getprop_alloc(node, "name", (void **)&obd->obd_name)) == -1)
  return (EINVAL);
 OF_getprop_alloc(node, "compatible", (void **)&obd->obd_compat);
 OF_getprop_alloc(node, "device_type", (void **)&obd->obd_type);
 OF_getprop_alloc(node, "model", (void **)&obd->obd_model);
 OF_getprop_alloc(node, "status", (void **)&obd->obd_status);
 obd->obd_node = node;
 return (0);
}
