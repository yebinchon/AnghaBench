
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ PstateControl; int SmiCommand; } ;


 int ACPI_LOCK (int ) ;
 int ACPI_UNLOCK (int ) ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiOsWritePort (int ,scalar_t__,int) ;
 int acpi ;

__attribute__((used)) static void
acpi_px_startup(void *arg)
{


 if (AcpiGbl_FADT.PstateControl == 0)
  return;
 ACPI_LOCK(acpi);
 AcpiOsWritePort(AcpiGbl_FADT.SmiCommand, AcpiGbl_FADT.PstateControl, 8);
 ACPI_UNLOCK(acpi);
}
