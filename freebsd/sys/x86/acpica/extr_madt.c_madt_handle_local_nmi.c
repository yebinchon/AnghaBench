
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;


 int ACPI_MADT_POLARITY_CONFORMS ;
 int ACPI_MADT_TRIGGER_CONFORMS ;
 int APIC_ID_ALL ;
 int APIC_LVT_DM_NMI ;
 int APIC_LVT_LINT0 ;
 int APIC_LVT_LINT1 ;
 scalar_t__ bootverbose ;
 int interrupt_polarity (int,int ) ;
 int interrupt_trigger (int,int ) ;
 int lapic_set_lvt_mode (int,int,int ) ;
 int lapic_set_lvt_polarity (int,int,int ) ;
 int lapic_set_lvt_triggermode (int,int,int ) ;
 scalar_t__ madt_find_cpu (int,int*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
madt_handle_local_nmi(u_int acpi_id, UINT8 Lint, UINT16 IntiFlags)
{
 u_int apic_id, pin;

 if (acpi_id == 0xffffffff)
  apic_id = APIC_ID_ALL;
 else if (madt_find_cpu(acpi_id, &apic_id) != 0) {
  if (bootverbose)
   printf("MADT: Ignoring local NMI routed to "
       "ACPI CPU %u\n", acpi_id);
  return;
 }
 if (Lint == 0)
  pin = APIC_LVT_LINT0;
 else
  pin = APIC_LVT_LINT1;
 lapic_set_lvt_mode(apic_id, pin, APIC_LVT_DM_NMI);
 if (!(IntiFlags & ACPI_MADT_TRIGGER_CONFORMS))
  lapic_set_lvt_triggermode(apic_id, pin,
      interrupt_trigger(IntiFlags, 0));
 if (!(IntiFlags & ACPI_MADT_POLARITY_CONFORMS))
  lapic_set_lvt_polarity(apic_id, pin,
      interrupt_polarity(IntiFlags, 0));
}
