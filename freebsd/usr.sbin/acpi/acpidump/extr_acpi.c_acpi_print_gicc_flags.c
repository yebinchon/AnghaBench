
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ACPI_MADT_PERFORMANCE_IRQ_MODE ;
 int ACPI_MADT_VGIC_IRQ_MODE ;
 int printf (char*) ;

__attribute__((used)) static void
acpi_print_gicc_flags(uint32_t flags)
{

 printf("\tFlags={Performance intr=");
 if (flags & ACPI_MADT_PERFORMANCE_IRQ_MODE)
  printf("edge");
 else
  printf("level");
 printf(", VGIC intr=");
 if (flags & ACPI_MADT_VGIC_IRQ_MODE)
  printf("edge");
 else
  printf("level");
 printf("}\n");
}
