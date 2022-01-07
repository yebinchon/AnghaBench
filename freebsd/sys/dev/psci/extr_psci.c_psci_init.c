
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int psci_callfn_t ;


 scalar_t__ PSCI_RETVAL_SUCCESS ;
 int printf (char*) ;
 int psci_callfn ;
 scalar_t__ psci_find_callfn (int *) ;

__attribute__((used)) static void
psci_init(void *dummy)
{
 psci_callfn_t new_callfn;

 if (psci_find_callfn(&new_callfn) != PSCI_RETVAL_SUCCESS) {
  printf("No PSCI/SMCCC call function found\n");
  return;
 }

 psci_callfn = new_callfn;
}
