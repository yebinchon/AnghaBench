
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_cap {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_VENDOR ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int iicbus_get_addr (int ) ;
 int init_device (int ,struct cyapa_cap*,int) ;

__attribute__((used)) static int
cyapa_probe(device_t dev)
{
 struct cyapa_cap cap;
 int addr;
 int error;

 addr = iicbus_get_addr(dev);





 if (addr != 0xce)
  return (ENXIO);

 error = init_device(dev, &cap, 1);
 if (error != 0)
  return (ENXIO);

 device_set_desc(dev, "Cypress APA I2C Trackpad");

 return (BUS_PROBE_VENDOR);
}
