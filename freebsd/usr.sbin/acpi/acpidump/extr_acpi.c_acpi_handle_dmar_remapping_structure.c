
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Length; int Type; } ;
typedef TYPE_1__ ACPI_DMAR_HEADER ;






 int acpi_handle_dmar_atsr (void*) ;
 int acpi_handle_dmar_drhd (void*) ;
 int acpi_handle_dmar_rhsa (void*) ;
 int acpi_handle_dmar_rmrr (void*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
acpi_handle_dmar_remapping_structure(void *addr, int remaining)
{
 ACPI_DMAR_HEADER *hdr = addr;

 if (remaining < (int)sizeof(ACPI_DMAR_HEADER))
  return (-1);

 if (remaining < hdr->Length)
  return (-1);

 switch (hdr->Type) {
 case 130:
  acpi_handle_dmar_drhd(addr);
  break;
 case 129:
  acpi_handle_dmar_rmrr(addr);
  break;
 case 128:
  acpi_handle_dmar_atsr(addr);
  break;
 case 131:
  acpi_handle_dmar_rhsa(addr);
  break;
 default:
  printf("\n");
  printf("\tType=%d\n", hdr->Type);
  printf("\tLength=%d\n", hdr->Length);
  break;
 }
 return (hdr->Length);
}
