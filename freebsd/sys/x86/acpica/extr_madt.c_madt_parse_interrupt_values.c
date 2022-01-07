
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ SciInterrupt; } ;
struct TYPE_3__ {int SourceIrq; int GlobalIrq; scalar_t__ Bus; int IntiFlags; } ;
typedef TYPE_1__ ACPI_MADT_INTERRUPT_OVERRIDE ;


 TYPE_2__ AcpiGbl_FADT ;
 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 scalar_t__ getenv_string (char*,char*,int) ;
 int interrupt_polarity (int ,int) ;
 int interrupt_trigger (int ,int) ;
 int madt_found_sci_override ;
 int panic (char*,char*) ;
 int printf (char*,...) ;
 char tolower (char) ;

void
madt_parse_interrupt_values(void *entry,
    enum intr_trigger *trig, enum intr_polarity *pol)
{
 ACPI_MADT_INTERRUPT_OVERRIDE *intr;
 char buf[64];

 intr = entry;

 if (bootverbose)
  printf("MADT: Interrupt override: source %u, irq %u\n",
      intr->SourceIrq, intr->GlobalIrq);
 KASSERT(intr->Bus == 0, ("bus for interrupt overrides must be zero"));





 *trig = interrupt_trigger(intr->IntiFlags, intr->SourceIrq);
 *pol = interrupt_polarity(intr->IntiFlags, intr->SourceIrq);






 if (intr->SourceIrq == AcpiGbl_FADT.SciInterrupt) {
  madt_found_sci_override = 1;
  if (getenv_string("hw.acpi.sci.trigger", buf, sizeof(buf))) {
   if (tolower(buf[0]) == 'e')
    *trig = INTR_TRIGGER_EDGE;
   else if (tolower(buf[0]) == 'l')
    *trig = INTR_TRIGGER_LEVEL;
   else
    panic(
    "Invalid trigger %s: must be 'edge' or 'level'",
        buf);
   printf("MADT: Forcing SCI to %s trigger\n",
       *trig == INTR_TRIGGER_EDGE ? "edge" : "level");
  }
  if (getenv_string("hw.acpi.sci.polarity", buf, sizeof(buf))) {
   if (tolower(buf[0]) == 'h')
    *pol = INTR_POLARITY_HIGH;
   else if (tolower(buf[0]) == 'l')
    *pol = INTR_POLARITY_LOW;
   else
    panic(
    "Invalid polarity %s: must be 'high' or 'low'",
        buf);
   printf("MADT: Forcing SCI to active %s polarity\n",
       *pol == INTR_POLARITY_HIGH ? "high" : "low");
  }
 }
}
