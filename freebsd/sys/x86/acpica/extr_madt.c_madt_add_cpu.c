
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct lapic_info {int la_enabled; int la_acpi_id; } ;


 int ACPI_MADT_ENABLED ;
 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 int lapic_create (int,int ) ;
 struct lapic_info* lapics ;
 int max_apic_id ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
madt_add_cpu(u_int acpi_id, u_int apic_id, u_int flags)
{
 struct lapic_info *la;





 if (bootverbose)
  printf("MADT: Found CPU APIC ID %u ACPI ID %u: %s\n",
      apic_id, acpi_id, flags & ACPI_MADT_ENABLED ?
      "enabled" : "disabled");
 if (!(flags & ACPI_MADT_ENABLED))
  return;
 if (apic_id > max_apic_id) {
  printf("MADT: Ignoring local APIC ID %u (too high)\n",
      apic_id);
  return;
 }

 la = &lapics[apic_id];
 KASSERT(la->la_enabled == 0, ("Duplicate local APIC ID %u", apic_id));
 la->la_enabled = 1;
 la->la_acpi_id = acpi_id;
 lapic_create(apic_id, 0);
}
