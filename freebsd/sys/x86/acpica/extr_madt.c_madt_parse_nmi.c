
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int GlobalIrq; int IntiFlags; } ;
typedef TYPE_1__ ACPI_MADT_NMI_SOURCE ;


 int ACPI_MADT_POLARITY_CONFORMS ;
 int ACPI_MADT_TRIGGER_CONFORMS ;
 int interrupt_polarity (int,int ) ;
 int interrupt_trigger (int,int ) ;
 int ioapic_set_nmi (void*,int ) ;
 int ioapic_set_polarity (void*,int ,int ) ;
 int ioapic_set_triggermode (void*,int ,int ) ;
 scalar_t__ madt_find_interrupt (int,void**,int *) ;
 int printf (char*,int) ;

__attribute__((used)) static void
madt_parse_nmi(ACPI_MADT_NMI_SOURCE *nmi)
{
 void *ioapic;
 u_int pin;

 if (madt_find_interrupt(nmi->GlobalIrq, &ioapic, &pin) != 0) {
  printf("MADT: Could not find APIC for vector %u\n",
      nmi->GlobalIrq);
  return;
 }

 ioapic_set_nmi(ioapic, pin);
 if (!(nmi->IntiFlags & ACPI_MADT_TRIGGER_CONFORMS))
  ioapic_set_triggermode(ioapic, pin,
      interrupt_trigger(nmi->IntiFlags, 0));
 if (!(nmi->IntiFlags & ACPI_MADT_POLARITY_CONFORMS))
  ioapic_set_polarity(ioapic, pin,
      interrupt_polarity(nmi->IntiFlags, 0));
}
