
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * psci_fnids; } ;


 int PSCI_FNID_CPU_ON ;
 size_t PSCI_FN_CPU_ON ;
 int psci_call (int ,unsigned long,unsigned long,unsigned long) ;
 TYPE_1__* psci_softc ;

int
psci_cpu_on(unsigned long cpu, unsigned long entry, unsigned long context_id)
{
 uint32_t fnid;

 fnid = PSCI_FNID_CPU_ON;
 if (psci_softc != ((void*)0))
  fnid = psci_softc->psci_fnids[PSCI_FN_CPU_ON];


 return (psci_call(fnid, cpu, entry, context_id));
}
