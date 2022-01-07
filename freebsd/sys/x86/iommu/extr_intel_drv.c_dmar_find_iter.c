
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct find_iter_args {scalar_t__ i; int * res; } ;
struct TYPE_3__ {scalar_t__ Type; } ;
typedef TYPE_1__ ACPI_DMAR_HEADER ;
typedef int ACPI_DMAR_HARDWARE_UNIT ;


 scalar_t__ ACPI_DMAR_TYPE_HARDWARE_UNIT ;

__attribute__((used)) static int
dmar_find_iter(ACPI_DMAR_HEADER *dmarh, void *arg)
{
 struct find_iter_args *fia;

 if (dmarh->Type != ACPI_DMAR_TYPE_HARDWARE_UNIT)
  return (1);

 fia = arg;
 if (fia->i == 0) {
  fia->res = (ACPI_DMAR_HARDWARE_UNIT *)dmarh;
  return (0);
 }
 fia->i--;
 return (1);
}
