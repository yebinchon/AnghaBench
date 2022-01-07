
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int * device_t ;
typedef scalar_t__ devclass_t ;


 int KASSERT (int,char*) ;
 int PCIEM_FLAGS_TYPE ;
 int PCIEM_TYPE_PCI_BRIDGE ;
 scalar_t__ PCIER_FLAGS ;
 int PCIY_EXPRESS ;
 int PCI_RID (int ,int ,int ) ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int *) ;
 int device_get_name (int *) ;
 int * device_get_parent (int *) ;
 scalar_t__ pci_find_cap (int *,int ,int*) ;
 int pci_get_bus (int *) ;
 int pci_get_rid (int *) ;
 int pci_read_config (int *,scalar_t__,int) ;

device_t
dmar_get_requester(device_t dev, uint16_t *rid)
{
 devclass_t pci_class;
 device_t l, pci, pcib, pcip, pcibp, requester;
 int cap_offset;
 uint16_t pcie_flags;
 bool bridge_is_pcie;

 pci_class = devclass_find("pci");
 l = requester = dev;

 *rid = pci_get_rid(dev);






 for (;;) {
  pci = device_get_parent(l);
  KASSERT(pci != ((void*)0), ("dmar_get_requester(%s): NULL parent "
      "for %s", device_get_name(dev), device_get_name(l)));
  KASSERT(device_get_devclass(pci) == pci_class,
      ("dmar_get_requester(%s): non-pci parent %s for %s",
      device_get_name(dev), device_get_name(pci),
      device_get_name(l)));

  pcib = device_get_parent(pci);
  KASSERT(pcib != ((void*)0), ("dmar_get_requester(%s): NULL bridge "
      "for %s", device_get_name(dev), device_get_name(pci)));







  pcip = device_get_parent(pcib);
  if (device_get_devclass(pcip) != pci_class)
   break;
  pcibp = device_get_parent(pcip);

  if (pci_find_cap(l, PCIY_EXPRESS, &cap_offset) == 0) {






   l = pcib;
  } else {





   bridge_is_pcie = pci_find_cap(pcib, PCIY_EXPRESS,
       &cap_offset) == 0;
   requester = pcib;
   if (!bridge_is_pcie && pci_find_cap(pcibp,
       PCIY_EXPRESS, &cap_offset) == 0) {
    pcie_flags = pci_read_config(pcibp,
        cap_offset + PCIER_FLAGS, 2);
    if ((pcie_flags & PCIEM_FLAGS_TYPE) !=
        PCIEM_TYPE_PCI_BRIDGE)
     bridge_is_pcie = 1;
   }

   if (bridge_is_pcie) {
    *rid = PCI_RID(pci_get_bus(l), 0, 0);
    l = pcibp;
   } else {







    *rid = pci_get_rid(pcib);
    l = pcib;
   }
  }
 }
 return (requester);
}
