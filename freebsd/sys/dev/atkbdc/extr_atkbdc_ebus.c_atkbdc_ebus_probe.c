
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ KBD_STATUS_PORT ;
 scalar_t__ OF_finddevice (char*) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int atkbdc_probe_unit (int ,struct resource*,struct resource*) ;
 struct resource* bus_alloc_resource (int ,int ,int*,int ,int ,int,int ) ;
 scalar_t__ bus_get_resource (int ,int ,int,int *,int *) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_disable (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_name (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int sparc64_model ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
atkbdc_ebus_probe(device_t dev)
{
 struct resource *port0, *port1;
 rman_res_t count, start;
 int error, rid;

 if (strcmp(ofw_bus_get_name(dev), "8042") != 0)
  return (ENXIO);
 if ((!strcmp(sparc64_model, "SUNW,UltraAX-MP") ||
     !strcmp(sparc64_model, "SUNW,UltraSPARC-IIi-Engine")) &&
     OF_finddevice("keyboard") != ofw_bus_get_node(dev)) {
  device_disable(dev);
  return (ENXIO);
 }

 device_set_desc(dev, "Keyboard controller (i8042)");
 rid = 0;
 if (bus_get_resource(dev, SYS_RES_MEMORY, rid, &start, &count) != 0) {
  device_printf(dev,
      "cannot determine command/data port resource\n");
  return (ENXIO);
 }
 port0 = bus_alloc_resource(dev, SYS_RES_MEMORY, &rid, start, start, 1,
     RF_ACTIVE);
 if (port0 == ((void*)0)) {
  device_printf(dev,
      "cannot allocate command/data port resource\n");
  return (ENXIO);
 }

 rid = 1;
 if (bus_get_resource(dev, SYS_RES_MEMORY, rid, &start, &count) != 0) {
  device_printf(dev, "cannot determine status port resource\n");
  error = ENXIO;
  goto fail_port0;
 }
 start += KBD_STATUS_PORT;
 port1 = bus_alloc_resource(dev, SYS_RES_MEMORY, &rid, start, start, 1,
     RF_ACTIVE);
 if (port1 == ((void*)0)) {
  device_printf(dev, "cannot allocate status port resource\n");
  error = ENXIO;
  goto fail_port0;
 }

 error = atkbdc_probe_unit(device_get_unit(dev), port0, port1);
 if (error != 0)
  device_printf(dev, "atkbdc_porbe_unit failed\n");

 bus_release_resource(dev, SYS_RES_MEMORY, 1, port1);
 fail_port0:
 bus_release_resource(dev, SYS_RES_MEMORY, 0, port0);

 return (error);
}
