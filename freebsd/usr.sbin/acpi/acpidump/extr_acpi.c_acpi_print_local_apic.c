
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ACPI_MADT_ENABLED ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_local_apic(uint32_t apic_id, uint32_t flags)
{

 printf("\tFlags={");
 if (flags & ACPI_MADT_ENABLED)
  printf("ENABLED");
 else
  printf("DISABLED");
 printf("}\n");
 printf("\tAPIC ID=%d\n", apic_id);
}
