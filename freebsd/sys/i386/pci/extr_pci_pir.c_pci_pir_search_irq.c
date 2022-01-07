
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int PCIM_HDRTYPE ;
 int PCIM_MFDEV ;
 int PCIR_HDRTYPE ;
 int PCIR_INTLINE ;
 int PCIR_INTPIN ;
 int PCIR_VENDOR ;
 int PCIV_INVALID ;
 scalar_t__ PCI_FUNCMAX ;
 scalar_t__ PCI_INVALID_IRQ ;
 int PCI_MAXHDRTYPE ;
 scalar_t__ bootverbose ;
 int pci_cfgregread (int,int,scalar_t__,int ,int) ;
 int printf (char*,int,int,int,scalar_t__,int) ;

__attribute__((used)) static uint8_t
pci_pir_search_irq(int bus, int device, int pin)
{
 uint32_t value;
 uint8_t func, maxfunc;


 value = pci_cfgregread(bus, device, 0, PCIR_VENDOR, 2);
 if (value == PCIV_INVALID)
  return (PCI_INVALID_IRQ);
 value = pci_cfgregread(bus, device, 0, PCIR_HDRTYPE, 1);
 if ((value & PCIM_HDRTYPE) > PCI_MAXHDRTYPE)
  return (PCI_INVALID_IRQ);
 if (value & PCIM_MFDEV)
  maxfunc = PCI_FUNCMAX;
 else
  maxfunc = 0;


 for (func = 0; func <= maxfunc; func++) {
  value = pci_cfgregread(bus, device, func, PCIR_VENDOR, 2);
  if (value == PCIV_INVALID)
   continue;
  value = pci_cfgregread(bus, device, func, PCIR_INTPIN, 1);






  if (value != pin + 1)
   continue;
  value = pci_cfgregread(bus, device, func, PCIR_INTLINE, 1);
  if (bootverbose)
   printf(
  "$PIR: Found matching pin for %d.%d.INT%c at func %d: %d\n",
       bus, device, pin + 'A', func, value);
  if (value != PCI_INVALID_IRQ)
   return (value);
 }
 return (PCI_INVALID_IRQ);
}
