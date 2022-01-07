
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 int xen_pv_domain () ;

__attribute__((used)) static int
nexus_xen_probe(device_t dev)
{

 if (!xen_pv_domain())
  return (ENXIO);

 return (BUS_PROBE_SPECIFIC);
}
