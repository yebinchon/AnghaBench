
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int OF_hasprop (int ,char*) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
cpufreq_dt_probe(device_t dev)
{
 phandle_t node;

 node = ofw_bus_get_node(device_get_parent(dev));

 if (!OF_hasprop(node, "clocks") ||
     (!OF_hasprop(node, "cpu-supply") &&
     !OF_hasprop(node, "cpu0-supply")))

  return (ENXIO);

 if (!OF_hasprop(node, "operating-points") &&
   !OF_hasprop(node, "operating-points-v2"))
  return (ENXIO);

 device_set_desc(dev, "Generic cpufreq driver");
 return (BUS_PROBE_GENERIC);
}
