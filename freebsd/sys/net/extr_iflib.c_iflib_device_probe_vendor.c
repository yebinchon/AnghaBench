
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_VENDOR ;
 int iflib_device_probe (int ) ;

int
iflib_device_probe_vendor(device_t dev)
{
 int probe;

 probe = iflib_device_probe(dev);
 if (probe == BUS_PROBE_DEFAULT)
  return (BUS_PROBE_VENDOR);
 else
  return (probe);
}
