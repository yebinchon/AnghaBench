
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ la_acpi_id; int la_enabled; } ;


 int ENOENT ;
 TYPE_1__* lapics ;
 int max_apic_id ;

__attribute__((used)) static int
madt_find_cpu(u_int acpi_id, u_int *apic_id)
{
 int i;

 for (i = 0; i <= max_apic_id; i++) {
  if (!lapics[i].la_enabled)
   continue;
  if (lapics[i].la_acpi_id != acpi_id)
   continue;
  *apic_id = i;
  return (0);
 }
 return (ENOENT);
}
