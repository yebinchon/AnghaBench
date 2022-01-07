
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Length; int Type; } ;
typedef TYPE_1__ ACPI_DMAR_HEADER ;



 int acpi_handle_dmar_drhd (void*) ;

__attribute__((used)) static int
acpi_handle_dmar_remapping_structure(void *addr, int remaining)
{
 ACPI_DMAR_HEADER *hdr = addr;

 if (remaining < (int)sizeof(ACPI_DMAR_HEADER))
  return (-1);

 if (remaining < hdr->Length)
  return (-1);

 switch (hdr->Type) {
 case 128:
  acpi_handle_dmar_drhd(addr);
  break;
 }
 return (hdr->Length);
}
