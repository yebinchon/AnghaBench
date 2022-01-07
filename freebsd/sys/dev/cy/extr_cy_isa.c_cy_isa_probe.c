
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;
typedef int cy_addr ;


 int CY16_RESET ;
 int CY_CLEAR_INTR ;
 int DELAY (int) ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int cy_inb (int ,int ,int ) ;
 int cy_outb (int ,int ,int ,int ) ;
 scalar_t__ cy_units (int ,int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ isa_get_logicalid (int ) ;
 int rman_get_virtual (struct resource*) ;

__attribute__((used)) static int
cy_isa_probe(device_t dev)
{
 struct resource *mem_res;
 cy_addr iobase;
 int error, mem_rid;

 if (isa_get_logicalid(dev) != 0)
  return (ENXIO);

 mem_rid = 0;
 mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &mem_rid,
     RF_ACTIVE);
 if (mem_res == ((void*)0)) {
  device_printf(dev, "ioport resource allocation failed\n");
  return (ENXIO);
 }
 iobase = rman_get_virtual(mem_res);


 cy_inb(iobase, CY16_RESET, 0);
 DELAY(500);


 cy_outb(iobase, CY_CLEAR_INTR, 0, 0);
 DELAY(500);

 error = (cy_units(iobase, 0) == 0 ? ENXIO : 0);
 bus_release_resource(dev, SYS_RES_MEMORY, mem_rid, mem_res);
 return (error);
}
