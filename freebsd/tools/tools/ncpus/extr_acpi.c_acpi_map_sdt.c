
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct ACPIsdt {int len; } ;


 struct ACPIsdt* acpi_map_physical (int ,int) ;

__attribute__((used)) static struct ACPIsdt *
acpi_map_sdt(vm_offset_t pa)
{
 struct ACPIsdt *sp;

 sp = acpi_map_physical(pa, sizeof(struct ACPIsdt));
 sp = acpi_map_physical(pa, sp->len);
 return (sp);
}
