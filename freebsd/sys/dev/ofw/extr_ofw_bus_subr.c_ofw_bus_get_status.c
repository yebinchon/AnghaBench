
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {char const* obd_status; } ;
typedef int device_t ;


 struct ofw_bus_devinfo* OFW_BUS_GET_DEVINFO (int ,int ) ;
 int device_get_parent (int ) ;

const char *
ofw_bus_get_status(device_t dev)
{
 const struct ofw_bus_devinfo *obd;

 obd = OFW_BUS_GET_DEVINFO(device_get_parent(dev), dev);
 if (obd == ((void*)0))
  return (((void*)0));

 return (obd->obd_status);
}
