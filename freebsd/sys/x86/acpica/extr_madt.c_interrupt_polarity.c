
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {int SciInterrupt; } ;





 int ACPI_MADT_POLARITY_MASK ;
 TYPE_1__ AcpiGbl_FADT ;
 int INTR_POLARITY_HIGH ;
 int INTR_POLARITY_LOW ;
 int printf (char*) ;

__attribute__((used)) static enum intr_polarity
interrupt_polarity(UINT16 IntiFlags, UINT8 Source)
{

 switch (IntiFlags & ACPI_MADT_POLARITY_MASK) {
 default:
  printf("WARNING: Bogus Interrupt Polarity. Assume CONFORMS\n");

 case 128:
  if (Source == AcpiGbl_FADT.SciInterrupt)
   return (INTR_POLARITY_LOW);
  else
   return (INTR_POLARITY_HIGH);
 case 130:
  return (INTR_POLARITY_HIGH);
 case 129:
  return (INTR_POLARITY_LOW);
 }
}
