
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;





 int ACPI_MADT_POLARITY_MASK ;



 int ACPI_MADT_TRIGGER_MASK ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_mps_flags(uint16_t flags)
{

 printf("\tFlags={Polarity=");
 switch (flags & ACPI_MADT_POLARITY_MASK) {
 case 131:
  printf("conforming");
  break;
 case 133:
  printf("active-hi");
  break;
 case 132:
  printf("active-lo");
  break;
 default:
  printf("0x%x", flags & ACPI_MADT_POLARITY_MASK);
  break;
 }
 printf(", Trigger=");
 switch (flags & ACPI_MADT_TRIGGER_MASK) {
 case 130:
  printf("conforming");
  break;
 case 129:
  printf("edge");
  break;
 case 128:
  printf("level");
  break;
 default:
  printf("0x%x", (flags & ACPI_MADT_TRIGGER_MASK) >> 2);
 }
 printf("}\n");
}
