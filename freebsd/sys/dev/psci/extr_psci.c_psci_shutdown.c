
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__* psci_fnids; } ;


 size_t PSCI_FN_SYSTEM_OFF ;
 size_t PSCI_FN_SYSTEM_RESET ;
 int RB_HALT ;
 int RB_POWEROFF ;
 int psci_call (scalar_t__,int ,int ,int ) ;
 TYPE_1__* psci_softc ;

__attribute__((used)) static void
psci_shutdown(void *xsc, int howto)
{
 uint32_t fn = 0;

 if (psci_softc == ((void*)0))
  return;


 if ((howto & RB_POWEROFF) != 0)
  fn = psci_softc->psci_fnids[PSCI_FN_SYSTEM_OFF];
 else if ((howto & RB_HALT) == 0)
  fn = psci_softc->psci_fnids[PSCI_FN_SYSTEM_RESET];

 if (fn)
  psci_call(fn, 0, 0, 0);


}
