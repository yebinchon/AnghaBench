
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct pci_devinfo {int dummy; } ;
typedef int device_t ;


 int PCIB_MAXSLOTS (int ) ;
 int PCIB_READ_CONFIG (int ,int,int,int,int ,int) ;
 int PCIB_WRITE_CONFIG (int ,int,int,int,int,int,int) ;
 int PCIM_HDRTYPE ;
 int PCIM_MFDEV ;
 int PCIR_DEVICE ;
 int PCIR_HDRTYPE ;
 int PCI_FUNCMAX ;
 int PCI_MAXHDRTYPE ;
 int PIC_USB_IRQ (int) ;
 int XLP_HDR_OFFSET (int,int ,int,int) ;
 int XLP_PCI_DEVSCRATCH_REG0 ;
 int bus_generic_attach (int ) ;
 int device_get_parent (int ) ;
 int nlm_dev_exists (int) ;
 int pci_add_child (int ,struct pci_devinfo*) ;
 struct pci_devinfo* pci_read_device (int ,int ,int ,int,int,int) ;
 int pcib_get_bus (int ) ;
 int pcib_get_domain (int ) ;

__attribute__((used)) static int
xlp_pci_attach(device_t dev)
{
 struct pci_devinfo *dinfo;
 device_t pcib;
 int maxslots, s, f, pcifunchigh, irq;
 int busno, node, devoffset;
 uint16_t devid;
 uint8_t hdrtype;





 pcib = device_get_parent(dev);
 busno = pcib_get_bus(dev);
 maxslots = PCIB_MAXSLOTS(pcib);
 for (s = 0; s <= maxslots; s++) {
  pcifunchigh = 0;
  f = 0;
  hdrtype = PCIB_READ_CONFIG(pcib, busno, s, f, PCIR_HDRTYPE, 1);
  if ((hdrtype & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
   continue;
  if (hdrtype & PCIM_MFDEV)
   pcifunchigh = PCI_FUNCMAX;
  node = s / 8;
  for (f = 0; f <= pcifunchigh; f++) {
   devoffset = XLP_HDR_OFFSET(node, 0, s % 8, f);
   if (!nlm_dev_exists(devoffset))
    continue;


   devid = PCIB_READ_CONFIG(pcib, busno, s, f, PCIR_DEVICE, 2);


   switch (devid) {
   case 132:
   case 129:
   case 134:
   case 128:
   case 133:
   case 130:
   case 131:
    continue;
   case 135:
    irq = PIC_USB_IRQ(f);
    PCIB_WRITE_CONFIG(pcib, busno, s, f,
        XLP_PCI_DEVSCRATCH_REG0 << 2,
        (1 << 8) | irq, 4);
   }
   dinfo = pci_read_device(pcib, dev, pcib_get_domain(dev),
       busno, s, f);
   pci_add_child(dev, dinfo);
  }
 }
 return (bus_generic_attach(dev));
}
