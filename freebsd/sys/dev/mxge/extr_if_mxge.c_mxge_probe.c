
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ MXGE_PCI_DEVICE_Z8E ;
 scalar_t__ MXGE_PCI_DEVICE_Z8E_9 ;


 scalar_t__ MXGE_PCI_VENDOR_MYRICOM ;
 int device_printf (int ,char*,int) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
mxge_probe(device_t dev)
{
 int rev;


 if ((pci_get_vendor(dev) == MXGE_PCI_VENDOR_MYRICOM) &&
     ((pci_get_device(dev) == MXGE_PCI_DEVICE_Z8E) ||
      (pci_get_device(dev) == MXGE_PCI_DEVICE_Z8E_9))) {
  rev = pci_get_revid(dev);
  switch (rev) {
  case 129:
   device_set_desc(dev, "Myri10G-PCIE-8A");
   break;
  case 128:
   device_set_desc(dev, "Myri10G-PCIE-8B");
   break;
  default:
   device_set_desc(dev, "Myri10G-PCIE-8??");
   device_printf(dev, "Unrecognized rev %d NIC\n",
          rev);
   break;
  }
  return 0;
 }
 return ENXIO;
}
