
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct dmar_unit {int dummy; } ;


 int ACPI_DMAR_SCOPE_TYPE_IOAPIC ;
 struct dmar_unit* dmar_find_nonpci (int ,int ,int *) ;

struct dmar_unit *
dmar_find_ioapic(u_int apic_id, uint16_t *rid)
{

 return (dmar_find_nonpci(apic_id, ACPI_DMAR_SCOPE_TYPE_IOAPIC, rid));
}
