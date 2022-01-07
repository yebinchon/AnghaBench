
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int driver_t ;
typedef int device_t ;
struct TYPE_2__ {int SciInterrupt; } ;


 TYPE_1__ AcpiGbl_FADT ;
 int NUM_ISA_INTERRUPTS ;
 int pci_link_bios_isa_irqs ;

__attribute__((used)) static void
acpi_pci_link_identify(driver_t *driver, device_t parent)
{
 if (AcpiGbl_FADT.SciInterrupt < NUM_ISA_INTERRUPTS)
  pci_link_bios_isa_irqs |= (1 << AcpiGbl_FADT.SciInterrupt);
}
