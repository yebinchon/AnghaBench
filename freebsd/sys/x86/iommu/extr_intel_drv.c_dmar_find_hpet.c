
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dmar_unit {int dummy; } ;
typedef int device_t ;


 int ACPI_DMAR_SCOPE_TYPE_HPET ;
 struct dmar_unit* dmar_find_nonpci (int ,int ,int *) ;
 int hpet_get_uid (int ) ;

struct dmar_unit *
dmar_find_hpet(device_t dev, uint16_t *rid)
{

 return (dmar_find_nonpci(hpet_get_uid(dev), ACPI_DMAR_SCOPE_TYPE_HPET,
     rid));
}
