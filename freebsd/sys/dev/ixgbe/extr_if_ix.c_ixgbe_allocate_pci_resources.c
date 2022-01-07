
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int mem_bus_space_handle; int mem_bus_space_tag; } ;
struct TYPE_3__ {int * hw_addr; } ;
struct adapter {TYPE_2__ osdep; TYPE_1__ hw; int pci_mem; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int ENXIO ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
ixgbe_allocate_pci_resources(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 int rid;

 rid = PCIR_BAR(0);
 adapter->pci_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);

 if (!(adapter->pci_mem)) {
  device_printf(dev, "Unable to allocate bus resource: memory\n");
  return (ENXIO);
 }


 adapter->osdep.mem_bus_space_tag = rman_get_bustag(adapter->pci_mem);
 adapter->osdep.mem_bus_space_handle =
     rman_get_bushandle(adapter->pci_mem);

 adapter->hw.hw_addr = (u8 *)&adapter->osdep.mem_bus_space_handle;

 return (0);
}
