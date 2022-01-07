
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {int SciInterrupt; } ;





 int ACPI_MADT_TRIGGER_MASK ;
 TYPE_1__ AcpiGbl_FADT ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 int printf (char*) ;

__attribute__((used)) static enum intr_trigger
interrupt_trigger(UINT16 IntiFlags, UINT8 Source)
{

 switch (IntiFlags & ACPI_MADT_TRIGGER_MASK) {
 default:
  printf("WARNING: Bogus Interrupt Trigger Mode. Assume CONFORMS.\n");

 case 130:
  if (Source == AcpiGbl_FADT.SciInterrupt)
   return (INTR_TRIGGER_LEVEL);
  else
   return (INTR_TRIGGER_EDGE);
 case 129:
  return (INTR_TRIGGER_EDGE);
 case 128:
  return (INTR_TRIGGER_LEVEL);
 }
}
