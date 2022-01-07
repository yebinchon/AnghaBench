
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSCI_RETVAL_NOT_SUPPORTED ;
 int _psci_get_version (int *) ;
 int * psci_softc ;

int
psci_get_version(void)
{

 if (psci_softc == ((void*)0))
  return (PSCI_RETVAL_NOT_SUPPORTED);
 return (_psci_get_version(psci_softc));
}
