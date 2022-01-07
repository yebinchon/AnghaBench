
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {char const* obd_model; } ;
typedef int device_t ;


 struct ofw_bus_devinfo* OFW_BUS_GET_DEVINFO (int ,int ) ;

const char *
ofw_bus_gen_get_model(device_t bus, device_t dev)
{
 const struct ofw_bus_devinfo *obd;

 obd = OFW_BUS_GET_DEVINFO(bus, dev);
 if (obd == ((void*)0))
  return (((void*)0));
 return (obd->obd_model);
}
