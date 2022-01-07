
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_caps {int nvram_src; } ;
typedef int device_t ;


 struct chipc_caps* BHND_CHIPC_GET_CAPS (int ) ;
 int BUS_PROBE_NOWILDCARD ;
 int CHIPC_VALID_SPROM_SRC (int ) ;
 int ENXIO ;
 int bhnd_sprom_probe (int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
chipc_sprom_probe(device_t dev)
{
 struct chipc_caps *caps;
 device_t chipc;
 int error;

 chipc = device_get_parent(dev);
 caps = BHND_CHIPC_GET_CAPS(chipc);


 if (!CHIPC_VALID_SPROM_SRC(caps->nvram_src))
  return (ENXIO);


 if ((error = bhnd_sprom_probe(dev)) > 0)
  return (error);

 return (BUS_PROBE_NOWILDCARD);
}
