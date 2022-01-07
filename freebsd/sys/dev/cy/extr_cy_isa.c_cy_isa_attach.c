
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_TTY ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 scalar_t__ bus_setup_intr (int ,struct resource*,int ,int ,int *,void*,void**) ;
 void* cyattach_common (void*,int ) ;
 int cyintr ;
 int device_printf (int ,char*) ;
 void* rman_get_virtual (struct resource*) ;

__attribute__((used)) static int
cy_isa_attach(device_t dev)
{
 struct resource *irq_res, *mem_res;
 void *irq_cookie, *vaddr, *vsc;
 int irq_rid, mem_rid;

 irq_res = ((void*)0);
 mem_res = ((void*)0);

 mem_rid = 0;
 mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &mem_rid,
     RF_ACTIVE);
 if (mem_res == ((void*)0)) {
  device_printf(dev, "memory resource allocation failed\n");
  goto fail;
 }
 vaddr = rman_get_virtual(mem_res);

 vsc = cyattach_common(vaddr, 0);
 if (vsc == ((void*)0)) {
  device_printf(dev, "no ports found!\n");
  goto fail;
 }

 irq_rid = 0;
 irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &irq_rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (irq_res == ((void*)0)) {
  device_printf(dev, "interrupt resource allocation failed\n");
  goto fail;
 }
 if (bus_setup_intr(dev, irq_res, INTR_TYPE_TTY,
     cyintr, ((void*)0), vsc, &irq_cookie) != 0) {
  device_printf(dev, "interrupt setup failed\n");
  goto fail;
 }

 return (0);

fail:
 if (irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, irq_rid, irq_res);
 if (mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, mem_rid, mem_res);
 return (ENXIO);
}
