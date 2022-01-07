
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ isa_get_vendorid (int ) ;
 int sc_probe_unit (int ,int ) ;

__attribute__((used)) static int
scprobe(device_t dev)
{


 if (isa_get_vendorid(dev))
  return (ENXIO);

 device_set_desc(dev, "System console");
 return (sc_probe_unit(device_get_unit(dev), device_get_flags(dev)));
}
