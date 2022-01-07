
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
struct TYPE_6__ {int SciInterrupt; } ;
struct TYPE_5__ {int SourceIrq; int GlobalIrq; } ;
typedef TYPE_1__ ACPI_MADT_INTERRUPT_OVERRIDE ;


 int ACPI_Q_MADT_IRQ0 ;
 TYPE_4__ AcpiGbl_FADT ;
 int acpi_OverrideInterruptLevel (int) ;
 int acpi_quirks ;
 scalar_t__ bootverbose ;
 int madt_parse_interrupt_values (TYPE_1__*,int*,int*) ;
 int panic (char*) ;
 int printf (char*) ;
 int xen_register_pirq (int,int,int) ;

__attribute__((used)) static void
madt_parse_interrupt_override(ACPI_MADT_INTERRUPT_OVERRIDE *intr)
{
 enum intr_trigger trig;
 enum intr_polarity pol;
 int ret;

 if (acpi_quirks & ACPI_Q_MADT_IRQ0 && intr->SourceIrq == 0 &&
     intr->GlobalIrq == 2) {
  if (bootverbose)
   printf("MADT: Skipping timer override\n");
  return;
 }

 madt_parse_interrupt_values(intr, &trig, &pol);


 if (intr->SourceIrq != intr->GlobalIrq && intr->GlobalIrq > 15 &&
     intr->SourceIrq == AcpiGbl_FADT.SciInterrupt)




  acpi_OverrideInterruptLevel(intr->GlobalIrq);


 ret = xen_register_pirq(intr->GlobalIrq, trig, pol);
 if (ret != 0)
  panic("Unable to register interrupt override");
}
