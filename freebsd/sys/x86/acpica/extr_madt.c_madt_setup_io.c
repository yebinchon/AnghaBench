
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {int SciInterrupt; } ;
struct TYPE_6__ {int * io_apic; } ;


 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_INTR_APIC ;
 char* AcpiFormatException (int) ;
 TYPE_5__ AcpiGbl_FADT ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_LEVEL ;
 int IOAPIC_MAX_ID ;
 int KASSERT (int ,char*) ;
 int M_MADT ;
 int M_WAITOK ;
 int M_ZERO ;
 int acpi_SetDefaultIntrModel (int ) ;
 int acpi_Startup () ;
 int free (TYPE_1__*,int ) ;
 int ioapic_register (int *) ;
 int ioapic_set_polarity (void*,int ,int ) ;
 int ioapic_set_triggermode (void*,int ,int ) ;
 TYPE_1__* ioapics ;
 TYPE_1__* lapics ;
 scalar_t__ madt_find_interrupt (int,void**,int *) ;
 int madt_found_sci_override ;
 int madt_parse_apics ;
 int madt_parse_ints ;
 int madt_walk_table (int ,int *) ;
 TYPE_1__* malloc (int,int ,int) ;
 int panic (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
madt_setup_io(void)
{
 void *ioapic;
 u_int pin;
 int i;

 KASSERT(lapics != ((void*)0), ("local APICs not initialized"));


 i = acpi_Startup();
 if (ACPI_FAILURE(i)) {
  printf("MADT: ACPI Startup failed with %s\n",
      AcpiFormatException(i));
  printf("Try disabling either ACPI or apic support.\n");
  panic("Using MADT but ACPI doesn't work");
 }

 ioapics = malloc(sizeof(*ioapics) * (IOAPIC_MAX_ID + 1), M_MADT,
     M_WAITOK | M_ZERO);


 madt_walk_table(madt_parse_apics, ((void*)0));


 madt_walk_table(madt_parse_ints, ((void*)0));





 if (!madt_found_sci_override) {
  if (madt_find_interrupt(AcpiGbl_FADT.SciInterrupt, &ioapic,
      &pin) != 0)
   printf("MADT: Could not find APIC for SCI IRQ %u\n",
       AcpiGbl_FADT.SciInterrupt);
  else {
   printf(
 "MADT: Forcing active-low polarity and level trigger for SCI\n");
   ioapic_set_polarity(ioapic, pin, INTR_POLARITY_LOW);
   ioapic_set_triggermode(ioapic, pin, INTR_TRIGGER_LEVEL);
  }
 }


 for (i = 0; i <= IOAPIC_MAX_ID; i++)
  if (ioapics[i].io_apic != ((void*)0))
   ioapic_register(ioapics[i].io_apic);


 acpi_SetDefaultIntrModel(ACPI_INTR_APIC);

 free(ioapics, M_MADT);
 ioapics = ((void*)0);


 free(lapics, M_MADT);
 lapics = ((void*)0);

 return (0);
}
