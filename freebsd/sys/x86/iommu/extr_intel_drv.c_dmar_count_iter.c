
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Type; } ;
typedef TYPE_1__ ACPI_DMAR_HEADER ;


 scalar_t__ ACPI_DMAR_TYPE_HARDWARE_UNIT ;
 int dmar_devcnt ;

__attribute__((used)) static int
dmar_count_iter(ACPI_DMAR_HEADER *dmarh, void *arg)
{

 if (dmarh->Type == ACPI_DMAR_TYPE_HARDWARE_UNIT)
  dmar_devcnt++;
 return (1);
}
