
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int mem_bus_space_handle; int dev; int flush_reg; int mem_bus_space_size; int mem_bus_space_tag; } ;
struct TYPE_5__ {int func; int device; } ;
struct i40e_hw {TYPE_3__* back; int * hw_addr; TYPE_2__ bus; void* subsystem_device_id; void* subsystem_vendor_id; void* revision_id; int device_id; int vendor_id; } ;
struct TYPE_4__ {int ctx; } ;
struct ixl_pf {TYPE_3__ osdep; struct i40e_hw hw; int pci_mem; TYPE_1__ vsi; } ;
typedef int device_t ;


 int ENXIO ;
 int I40E_GLGEN_STAT ;
 int PCIR_BAR (int ) ;
 int PCIR_REVID ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 int pci_get_device (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_get_vendor (int ) ;
 void* pci_read_config (int ,int ,int) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rman_get_size (int ) ;

__attribute__((used)) static int
ixl_allocate_pci_resources(struct ixl_pf *pf)
{
 device_t dev = iflib_get_dev(pf->vsi.ctx);
 struct i40e_hw *hw = &pf->hw;
 int rid;


 rid = PCIR_BAR(0);
 pf->pci_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);

 if (!(pf->pci_mem)) {
  device_printf(dev, "Unable to allocate bus resource: PCI memory\n");
  return (ENXIO);
 }


 hw->vendor_id = pci_get_vendor(dev);
 hw->device_id = pci_get_device(dev);
 hw->revision_id = pci_read_config(dev, PCIR_REVID, 1);
 hw->subsystem_vendor_id =
     pci_read_config(dev, PCIR_SUBVEND_0, 2);
 hw->subsystem_device_id =
     pci_read_config(dev, PCIR_SUBDEV_0, 2);

 hw->bus.device = pci_get_slot(dev);
 hw->bus.func = pci_get_function(dev);


 pf->osdep.mem_bus_space_tag =
  rman_get_bustag(pf->pci_mem);
 pf->osdep.mem_bus_space_handle =
  rman_get_bushandle(pf->pci_mem);
 pf->osdep.mem_bus_space_size = rman_get_size(pf->pci_mem);
 pf->osdep.flush_reg = I40E_GLGEN_STAT;
 pf->osdep.dev = dev;

 pf->hw.hw_addr = (u8 *) &pf->osdep.mem_bus_space_handle;
 pf->hw.back = &pf->osdep;

  return (0);
 }
