
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BKTR_PCI_PRODUCT (unsigned int) ;
 scalar_t__ BKTR_PCI_VENDOR (unsigned int) ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;




 scalar_t__ PCI_VENDOR_BROOKTREE ;
 int device_set_desc (int ,char*) ;
 unsigned int pci_get_devid (int ) ;
 unsigned int pci_get_revid (int ) ;

__attribute__((used)) static int
bktr_probe( device_t dev )
{
 unsigned int type = pci_get_devid(dev);
        unsigned int rev = pci_get_revid(dev);

 if (BKTR_PCI_VENDOR(type) == PCI_VENDOR_BROOKTREE)
 {
  switch (BKTR_PCI_PRODUCT(type)) {
  case 131:
   if (rev == 0x12)
    device_set_desc(dev, "BrookTree 848A");
   else
    device_set_desc(dev, "BrookTree 848");
   return BUS_PROBE_DEFAULT;
  case 130:
   device_set_desc(dev, "BrookTree 849A");
   return BUS_PROBE_DEFAULT;
  case 129:
   device_set_desc(dev, "BrookTree 878");
   return BUS_PROBE_DEFAULT;
  case 128:
   device_set_desc(dev, "BrookTree 879");
   return BUS_PROBE_DEFAULT;
  }
 }

        return ENXIO;
}
