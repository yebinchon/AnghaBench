
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int * device_get_ivars (int ) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
nvdimm_e820_probe(device_t dev)
{






 if (device_get_ivars(dev) == ((void*)0))
  return (ENXIO);

 device_quiet(dev);
 device_set_desc(dev, "Legacy e820 NVDIMM root device");
 return (BUS_PROBE_NOWILDCARD);
}
