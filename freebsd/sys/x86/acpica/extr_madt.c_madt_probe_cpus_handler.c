
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int LapicFlags; int Id; } ;
struct TYPE_6__ {int LapicFlags; int LocalApicId; } ;
struct TYPE_5__ {int Type; } ;
typedef TYPE_1__ ACPI_SUBTABLE_HEADER ;
typedef TYPE_2__ ACPI_MADT_LOCAL_X2APIC ;
typedef TYPE_3__ ACPI_MADT_LOCAL_APIC ;




 int madt_parse_cpu (int ,int ) ;

__attribute__((used)) static void
madt_probe_cpus_handler(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
 ACPI_MADT_LOCAL_APIC *proc;
 ACPI_MADT_LOCAL_X2APIC *x2apic;

 switch (entry->Type) {
 case 129:
  proc = (ACPI_MADT_LOCAL_APIC *)entry;
  madt_parse_cpu(proc->Id, proc->LapicFlags);
  break;
 case 128:
  x2apic = (ACPI_MADT_LOCAL_X2APIC *)entry;
  madt_parse_cpu(x2apic->LocalApicId, x2apic->LapicFlags);
  break;
 }
}
