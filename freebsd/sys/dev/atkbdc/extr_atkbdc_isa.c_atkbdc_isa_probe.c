
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef scalar_t__ rman_res_t ;
typedef int register_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ ENXIO ;
 scalar_t__ IO_KBD ;
 scalar_t__ ISA_PNP_PROBE (int ,int ,int ) ;
 scalar_t__ KBD_STATUS_PORT ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int atkbdc_ids ;
 int atkbdc_probe_unit (int ,struct resource*,struct resource*) ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_get_resource (int ,int ,int,scalar_t__*,scalar_t__*) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,scalar_t__,int) ;
 int bus_space_read_1 (int ,int ,int ) ;
 int device_get_parent (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int device_verbose (int ) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static int
atkbdc_isa_probe(device_t dev)
{
 struct resource *port0;
 struct resource *port1;
 rman_res_t start;
 rman_res_t count;
 int error;
 int rid;

 bus_space_tag_t tag;
 bus_space_handle_t ioh1;
 volatile int i;
 register_t flags;



 if (ISA_PNP_PROBE(device_get_parent(dev), dev, atkbdc_ids) == ENXIO)
  return ENXIO;

 device_set_desc(dev, "Keyboard controller (i8042)");
 device_quiet(dev);
 rid = 0;
 if (bus_get_resource(dev, SYS_RES_IOPORT, rid, &start, &count) != 0)
  return ENXIO;
 if (start == IO_KBD + KBD_STATUS_PORT) {
  start = IO_KBD;
  count++;
 }
 if (count > 1)
  bus_set_resource(dev, SYS_RES_IOPORT, rid, start, 1);
 port0 = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (port0 == ((void*)0))
  return ENXIO;
 rid = 1;
 if (bus_get_resource(dev, SYS_RES_IOPORT, rid, ((void*)0), ((void*)0)) != 0)
  bus_set_resource(dev, SYS_RES_IOPORT, 1,
     start + KBD_STATUS_PORT, 1);
 port1 = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (port1 == ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IOPORT, 0, port0);
  return ENXIO;
 }
 tag = rman_get_bustag(port0);
 ioh1 = rman_get_bushandle(port1);
 flags = intr_disable();
 for (i = 0; i != 65535; i++) {
  if ((bus_space_read_1(tag, ioh1, 0) & 0x2) == 0)
   break;
 }
 intr_restore(flags);
 if (i == 65535) {
  bus_release_resource(dev, SYS_RES_IOPORT, 0, port0);
  bus_release_resource(dev, SYS_RES_IOPORT, 1, port1);
  if (bootverbose)
   device_printf(dev, "AT keyboard controller not found\n");
  return ENXIO;
 }


 device_verbose(dev);

 error = atkbdc_probe_unit(device_get_unit(dev), port0, port1);

 bus_release_resource(dev, SYS_RES_IOPORT, 0, port0);
 bus_release_resource(dev, SYS_RES_IOPORT, 1, port1);

 return error;
}
