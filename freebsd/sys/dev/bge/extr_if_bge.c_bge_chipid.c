
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;
 scalar_t__ BGE_ASICREV (int) ;
 scalar_t__ BGE_ASICREV_USE_PRODID_REG ;
 int BGE_CHIPID_BCM5720_A0 ;
 int BGE_PCIMISCCTL_ASICREV_SHIFT ;
 int BGE_PCI_GEN15_PRODID_ASICREV ;
 int BGE_PCI_GEN2_PRODID_ASICREV ;
 int BGE_PCI_MISC_CTL ;
 int BGE_PCI_PRODID_ASICREV ;
 int pci_get_device (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static uint32_t
bge_chipid(device_t dev)
{
 uint32_t id;

 id = pci_read_config(dev, BGE_PCI_MISC_CTL, 4) >>
     BGE_PCIMISCCTL_ASICREV_SHIFT;
 if (BGE_ASICREV(id) == BGE_ASICREV_USE_PRODID_REG) {




  switch (pci_get_device(dev)) {
  case 147:

   id = BGE_CHIPID_BCM5720_A0;
   break;
  case 148:
  case 146:
  case 145:
  case 144:
  case 143:
  case 142:
  case 141:
  case 138:
  case 135:
  case 130:
   id = pci_read_config(dev,
       BGE_PCI_GEN2_PRODID_ASICREV, 4);
   break;
  case 140:
  case 139:
  case 137:
  case 136:
  case 134:
  case 133:
  case 132:
  case 131:
  case 129:
  case 128:
   id = pci_read_config(dev,
       BGE_PCI_GEN15_PRODID_ASICREV, 4);
   break;
  default:
   id = pci_read_config(dev, BGE_PCI_PRODID_ASICREV, 4);
  }
 }
 return (id);
}
