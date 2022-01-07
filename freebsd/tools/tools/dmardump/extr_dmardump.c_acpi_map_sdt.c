
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_4__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 TYPE_1__* acpi_map_physical (int ,int) ;

__attribute__((used)) static ACPI_TABLE_HEADER *
acpi_map_sdt(vm_offset_t pa)
{
 ACPI_TABLE_HEADER *sp;

 sp = acpi_map_physical(pa, sizeof(ACPI_TABLE_HEADER));
 sp = acpi_map_physical(pa, sp->Length);
 return (sp);
}
