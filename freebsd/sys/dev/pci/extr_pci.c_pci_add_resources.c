
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct resource_list {int dummy; } ;
struct pci_quirk {int devid; scalar_t__ type; scalar_t__ arg1; } ;
struct TYPE_3__ {int device; int vendor; int nummaps; scalar_t__ intpin; int intline; } ;
struct pci_devinfo {struct resource_list resources; TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 scalar_t__ PCIC_SERIALBUS ;
 scalar_t__ PCIC_STORAGE ;
 scalar_t__ PCIP_SERIALBUS_USB_EHCI ;
 scalar_t__ PCIP_SERIALBUS_USB_OHCI ;
 scalar_t__ PCIP_SERIALBUS_USB_UHCI ;
 scalar_t__ PCIP_SERIALBUS_USB_XHCI ;
 scalar_t__ PCIP_STORAGE_IDE_MASTERDEV ;
 scalar_t__ PCIR_BAR (int) ;
 scalar_t__ PCIS_SERIALBUS_USB ;
 scalar_t__ PCIS_STORAGE_IDE ;
 scalar_t__ PCI_INTERRUPT_VALID (int ) ;
 scalar_t__ PCI_QUIRK_MAP_REG ;
 scalar_t__ PCI_QUIRK_UNMAP_REG ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int ehci_early_takeover (int ) ;
 int ohci_early_takeover (int ) ;
 scalar_t__ pci_add_map (int ,int ,scalar_t__,struct resource_list*,int,int) ;
 int pci_add_resources_ea (int ,int ,int ) ;
 int pci_assign_interrupt (int ,int ,int) ;
 int pci_ata_maps (int ,int ,struct resource_list*,int,int) ;
 scalar_t__ pci_ea_is_enabled (int ,scalar_t__) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_progif (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 struct pci_quirk* pci_quirks ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_reserve_secbus (int ,int ,TYPE_1__*,struct resource_list*) ;
 scalar_t__ pci_usb_takeover ;
 int * resource_list_find (struct resource_list*,int ,scalar_t__) ;
 int uhci_early_takeover (int ) ;
 int xhci_early_takeover (int ) ;

void
pci_add_resources(device_t bus, device_t dev, int force, uint32_t prefetchmask)
{
 struct pci_devinfo *dinfo;
 pcicfgregs *cfg;
 struct resource_list *rl;
 const struct pci_quirk *q;
 uint32_t devid;
 int i;

 dinfo = device_get_ivars(dev);
 cfg = &dinfo->cfg;
 rl = &dinfo->resources;
 devid = (cfg->device << 16) | cfg->vendor;


 pci_add_resources_ea(bus, dev, 0);


 if ((pci_get_class(dev) == PCIC_STORAGE) &&
     (pci_get_subclass(dev) == PCIS_STORAGE_IDE) &&
     ((pci_get_progif(dev) & PCIP_STORAGE_IDE_MASTERDEV) ||
      (!pci_read_config(dev, PCIR_BAR(0), 4) &&
       !pci_read_config(dev, PCIR_BAR(2), 4))) )
  pci_ata_maps(bus, dev, rl, force, prefetchmask);
 else
  for (i = 0; i < cfg->nummaps;) {

   if ((resource_list_find(rl, SYS_RES_MEMORY, PCIR_BAR(i)) != ((void*)0)) ||
       (resource_list_find(rl, SYS_RES_IOPORT, PCIR_BAR(i)) != ((void*)0)) ||
       pci_ea_is_enabled(dev, PCIR_BAR(i))) {
    i++;
    continue;
   }




   for (q = &pci_quirks[0]; q->devid != 0; q++)
    if (q->devid == devid &&
        q->type == PCI_QUIRK_UNMAP_REG &&
        q->arg1 == PCIR_BAR(i))
     break;
   if (q->devid != 0) {
    i++;
    continue;
   }
   i += pci_add_map(bus, dev, PCIR_BAR(i), rl, force,
       prefetchmask & (1 << i));
  }




 for (q = &pci_quirks[0]; q->devid != 0; q++)
  if (q->devid == devid && q->type == PCI_QUIRK_MAP_REG)
   pci_add_map(bus, dev, q->arg1, rl, force, 0);

 if (cfg->intpin > 0 && PCI_INTERRUPT_VALID(cfg->intline)) {
  pci_assign_interrupt(bus, dev, 0);

 }

 if (pci_usb_takeover && pci_get_class(dev) == PCIC_SERIALBUS &&
     pci_get_subclass(dev) == PCIS_SERIALBUS_USB) {
  if (pci_get_progif(dev) == PCIP_SERIALBUS_USB_XHCI)
   xhci_early_takeover(dev);
  else if (pci_get_progif(dev) == PCIP_SERIALBUS_USB_EHCI)
   ehci_early_takeover(dev);
  else if (pci_get_progif(dev) == PCIP_SERIALBUS_USB_OHCI)
   ohci_early_takeover(dev);
  else if (pci_get_progif(dev) == PCIP_SERIALBUS_USB_UHCI)
   uhci_early_takeover(dev);
 }
}
