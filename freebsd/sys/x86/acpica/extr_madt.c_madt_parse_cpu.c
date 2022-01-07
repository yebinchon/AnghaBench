
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ACPI_MADT_ENABLED ;
 scalar_t__ MAXCPU ;
 unsigned int MAX_APIC_ID ;
 int max (unsigned int,int ) ;
 int max_apic_id ;
 scalar_t__ mp_maxid ;
 scalar_t__ mp_ncpus ;

__attribute__((used)) static void
madt_parse_cpu(unsigned int apic_id, unsigned int flags)
{

 if (!(flags & ACPI_MADT_ENABLED) ||



     apic_id > MAX_APIC_ID)
  return;





 max_apic_id = max(apic_id, max_apic_id);
}
