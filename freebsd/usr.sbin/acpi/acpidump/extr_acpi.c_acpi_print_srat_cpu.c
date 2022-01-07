
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ACPI_SRAT_CPU_ENABLED ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_srat_cpu(uint32_t apic_id, uint32_t proximity_domain,
    uint32_t flags)
{

 printf("\tFlags={");
 if (flags & ACPI_SRAT_CPU_ENABLED)
  printf("ENABLED");
 else
  printf("DISABLED");
 printf("}\n");
 printf("\tAPIC ID=%d\n", apic_id);
 printf("\tProximity Domain=%d\n", proximity_domain);
}
