
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_TABLE_DMAR ;


 int acpi_handle_dmar_remapping_structure (char*,int) ;

__attribute__((used)) static void
acpi_handle_dmar(ACPI_TABLE_HEADER *sdp)
{
 char *cp;
 int remaining, consumed;
 ACPI_TABLE_DMAR *dmar;

 dmar = (ACPI_TABLE_DMAR *)sdp;
 remaining = sdp->Length - sizeof(ACPI_TABLE_DMAR);
 while (remaining > 0) {
  cp = (char *)sdp + sdp->Length - remaining;
  consumed = acpi_handle_dmar_remapping_structure(cp, remaining);
  if (consumed <= 0)
   break;
  else
   remaining -= consumed;
 }
}
