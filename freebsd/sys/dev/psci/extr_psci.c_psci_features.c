
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {int psci_version; } ;


 int PSCI_FNID_FEATURES ;
 int PSCI_RETVAL_NOT_SUPPORTED ;
 int PSCI_VER_MAJOR (int ) ;
 int psci_call (int ,int ,int ,int ) ;
 TYPE_1__* psci_softc ;

int32_t
psci_features(uint32_t psci_func_id)
{

 if (psci_softc == ((void*)0))
  return (PSCI_RETVAL_NOT_SUPPORTED);


 if (PSCI_VER_MAJOR(psci_softc->psci_version) < 1)
  return (PSCI_RETVAL_NOT_SUPPORTED);

 return (psci_call(PSCI_FNID_FEATURES, psci_func_id, 0, 0));
}
