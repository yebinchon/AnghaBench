
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {void* io_bus_space_handle; void* io_bus_space_tag; void* mem_bus_space_handle; void* mem_bus_space_tag; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_3__* back; scalar_t__ io_base; TYPE_1__ mac; int * hw_addr; } ;
struct adapter {TYPE_3__ osdep; TYPE_2__ hw; int * ioport; int * memory; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 scalar_t__ EM_BAR_MEM_TYPE (int) ;
 scalar_t__ EM_BAR_MEM_TYPE_64BIT ;
 scalar_t__ EM_BAR_TYPE (int) ;
 scalar_t__ EM_BAR_TYPE_IO ;
 int ENXIO ;
 int PCIR_BAR (int ) ;
 int PCIR_CIS ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ e1000_82543 ;
 scalar_t__ em_mac_min ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;

__attribute__((used)) static int
em_allocate_pci_resources(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 int rid, val;

 rid = PCIR_BAR(0);
 adapter->memory = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (adapter->memory == ((void*)0)) {
  device_printf(dev, "Unable to allocate bus resource: memory\n");
  return (ENXIO);
 }
 adapter->osdep.mem_bus_space_tag = rman_get_bustag(adapter->memory);
 adapter->osdep.mem_bus_space_handle =
     rman_get_bushandle(adapter->memory);
 adapter->hw.hw_addr = (u8 *)&adapter->osdep.mem_bus_space_handle;


 if (adapter->hw.mac.type < em_mac_min &&
     adapter->hw.mac.type > e1000_82543) {

  for (rid = PCIR_BAR(0); rid < PCIR_CIS;) {
   val = pci_read_config(dev, rid, 4);
   if (EM_BAR_TYPE(val) == EM_BAR_TYPE_IO) {
    break;
   }
   rid += 4;

   if (EM_BAR_MEM_TYPE(val) == EM_BAR_MEM_TYPE_64BIT)
    rid += 4;
  }
  if (rid >= PCIR_CIS) {
   device_printf(dev, "Unable to locate IO BAR\n");
   return (ENXIO);
  }
  adapter->ioport = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
      &rid, RF_ACTIVE);
  if (adapter->ioport == ((void*)0)) {
   device_printf(dev, "Unable to allocate bus resource: "
       "ioport\n");
   return (ENXIO);
  }
  adapter->hw.io_base = 0;
  adapter->osdep.io_bus_space_tag =
      rman_get_bustag(adapter->ioport);
  adapter->osdep.io_bus_space_handle =
      rman_get_bushandle(adapter->ioport);
 }

 adapter->hw.back = &adapter->osdep;

 return (0);
}
