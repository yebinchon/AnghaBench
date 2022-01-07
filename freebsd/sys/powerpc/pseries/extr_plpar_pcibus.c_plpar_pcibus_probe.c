
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 int OF_finddevice (char*) ;
 int OF_hasprop (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int rtas_exists () ;

__attribute__((used)) static int
plpar_pcibus_probe(device_t dev)
{
 phandle_t rtas;

 if (ofw_bus_get_node(dev) == -1 || !rtas_exists())
  return (ENXIO);

 rtas = OF_finddevice("/rtas");
 if (!OF_hasprop(rtas, "ibm,hypertas-functions"))
  return (ENXIO);

 device_set_desc(dev, "POWER Hypervisor PCI bus");

 return (BUS_PROBE_SPECIFIC);
}
