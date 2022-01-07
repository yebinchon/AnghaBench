
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pmufreq_softc {int dummy; } ;
typedef int phandle_t ;
typedef int min_freq ;
typedef int device_t ;


 int ENXIO ;
 int OF_getprop (int ,char*,int *,int) ;
 int device_get_parent (int ) ;
 struct pmufreq_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
pmufreq_probe(device_t dev)
{
 struct pmufreq_softc *sc;
 phandle_t node;
 uint32_t min_freq;

 if (resource_disabled("pmufreq", 0))
  return (ENXIO);

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(device_get_parent(dev));




 if (OF_getprop(node, "min-clock-frequency", &min_freq, sizeof(min_freq)) == -1)
  return (ENXIO);
 device_set_desc(dev, "PMU-based frequency scaling");
 return (0);
}
