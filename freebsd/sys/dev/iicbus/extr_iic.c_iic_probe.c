
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ iicbus_get_addr (int ) ;

__attribute__((used)) static int
iic_probe(device_t dev)
{
 if (iicbus_get_addr(dev) > 0)
  return (ENXIO);

 device_set_desc(dev, "I2C generic I/O");

 return (0);
}
