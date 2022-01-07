
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct link {size_t l_irq; int l_bios_irq; int l_initial_irq; int l_isa_irq; scalar_t__ l_routed; int l_references; } ;
typedef int device_t ;


 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 scalar_t__ BUS_READ_IVAR (int ,int *,int ,uintptr_t*) ;
 int NUM_ISA_INTERRUPTS ;
 int PCIB_IVAR_BUS ;
 scalar_t__ PCI_INTERRUPT_VALID (int) ;
 struct link* acpi_pci_link_lookup (int ,int) ;
 int acpi_pci_link_search_irq (uintptr_t,int,int) ;
 int device_printf (int ,char*,...) ;
 int link_valid_irq (struct link*,int) ;
 int panic (char*) ;
 int pci_link ;
 int pci_link_bios_isa_irqs ;
 int * pci_link_interrupt_weights ;

void
acpi_pci_link_add_reference(device_t dev, int index, device_t pcib, int slot,
    int pin)
{
 struct link *link;
 uint8_t bios_irq;
 uintptr_t bus;







 if (BUS_READ_IVAR(pcib, ((void*)0), PCIB_IVAR_BUS, &bus) != 0) {
  device_printf(pcib, "Unable to read PCI bus number");
  panic("PCI bridge without a bus number");
 }


 ACPI_SERIAL_BEGIN(pci_link);
 link = acpi_pci_link_lookup(dev, index);
 if (link == ((void*)0)) {
  device_printf(dev, "apparently invalid index %d\n", index);
  ACPI_SERIAL_END(pci_link);
  return;
 }
 link->l_references++;
 if (link->l_routed)
  pci_link_interrupt_weights[link->l_irq]++;
 if (!link->l_isa_irq) {
  ACPI_SERIAL_END(pci_link);
  return;
 }


 bios_irq = acpi_pci_link_search_irq(bus, slot, pin);
 if (!PCI_INTERRUPT_VALID(bios_irq)) {
  ACPI_SERIAL_END(pci_link);
  return;
 }


 if (!link_valid_irq(link, bios_irq)) {
  device_printf(dev, "BIOS IRQ %u for %d.%d.INT%c is invalid\n",
      bios_irq, (int)bus, slot, pin + 'A');
 } else if (!PCI_INTERRUPT_VALID(link->l_bios_irq)) {
  link->l_bios_irq = bios_irq;
  if (bios_irq < NUM_ISA_INTERRUPTS)
   pci_link_bios_isa_irqs |= (1 << bios_irq);
  if (bios_irq != link->l_initial_irq &&
      PCI_INTERRUPT_VALID(link->l_initial_irq))
   device_printf(dev,
       "BIOS IRQ %u does not match initial IRQ %u\n",
       bios_irq, link->l_initial_irq);
 } else if (bios_irq != link->l_bios_irq)
  device_printf(dev,
     "BIOS IRQ %u for %d.%d.INT%c does not match previous BIOS IRQ %u\n",
      bios_irq, (int)bus, slot, pin + 'A',
      link->l_bios_irq);
 ACPI_SERIAL_END(pci_link);
}
