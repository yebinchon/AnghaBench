
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int PCIM_MFDEV ;
 int PCIR_HDRTYPE ;
 unsigned int PCI_FUNCMAX ;
 unsigned int PCI_SLOTMAX ;
 unsigned int octopci_init_device (int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int octopci_read_config (int ,unsigned int,unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static unsigned
octopci_init_bus(device_t dev, unsigned b)
{
 unsigned s, f;
 uint8_t hdrtype;
 unsigned secbus;

 secbus = b;

 for (s = 0; s <= PCI_SLOTMAX; s++) {
  for (f = 0; f <= PCI_FUNCMAX; f++) {
   hdrtype = octopci_read_config(dev, b, s, f, PCIR_HDRTYPE, 1);

   if (hdrtype == 0xff) {
    if (f == 0)
     break;
    continue;
   }

   secbus = octopci_init_device(dev, b, s, f, secbus);

   if (f == 0 && (hdrtype & PCIM_MFDEV) == 0)
    break;
  }
 }

 return (secbus);
}
