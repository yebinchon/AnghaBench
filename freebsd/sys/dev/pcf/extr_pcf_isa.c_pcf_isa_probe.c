
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int ENXIO ;
 int PCF_NAME ;
 int SYS_RES_IOPORT ;
 int bus_get_resource (int ,int ,int,scalar_t__*,scalar_t__*) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ isa_get_logicalid (int ) ;
 int resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
pcf_isa_probe(device_t dev)
{
 rman_res_t start, count;
 u_int rid = 0, port, error;


 if (isa_get_logicalid(dev))
  return (ENXIO);


 bus_get_resource(dev, SYS_RES_IOPORT, rid, &start, &count);
 if ((error = resource_int_value(PCF_NAME, 0, "port", &port)) != 0)
  return (error);


 if (port != (u_int)start)
  return (ENXIO);

 device_set_desc(dev, "PCF8584 I2C bus controller");

 return (0);
}
