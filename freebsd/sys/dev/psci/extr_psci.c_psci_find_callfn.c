
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * psci_callfn_t ;


 int PSCI_MISSING ;
 int PSCI_RETVAL_SUCCESS ;
 scalar_t__ USE_ACPI ;
 scalar_t__ USE_FDT ;
 int psci_acpi_callfn (int **) ;
 int psci_fdt_callfn (int **) ;

__attribute__((used)) static int
psci_find_callfn(psci_callfn_t *callfn)
{
 int error;

 *callfn = ((void*)0);
 if (*callfn == ((void*)0))
  return (PSCI_MISSING);

 return (PSCI_RETVAL_SUCCESS);
}
