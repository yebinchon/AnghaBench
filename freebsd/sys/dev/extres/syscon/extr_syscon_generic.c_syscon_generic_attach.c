
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon_generic_softc {int * syscon; int * mem_res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYSCON_LOCK_INIT (struct syscon_generic_softc*) ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct syscon_generic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int * syscon_create_ofw_node (int ,int *,int ) ;
 int syscon_generic_class ;

__attribute__((used)) static int
syscon_generic_attach(device_t dev)
{
 struct syscon_generic_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 sc->dev = dev;
 rid = 0;

 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resource\n");
  return (ENXIO);
 }

 SYSCON_LOCK_INIT(sc);
 sc->syscon = syscon_create_ofw_node(dev, &syscon_generic_class,
  ofw_bus_get_node(dev));
 if (sc->syscon == ((void*)0)) {
  device_printf(dev, "Failed to create/register syscon\n");
  return (ENXIO);
 }
 return (0);
}
