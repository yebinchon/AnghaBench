
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct psci_softc {scalar_t__* psci_fnids; } ;


 size_t PSCI_FN_VERSION ;
 int PSCI_RETVAL_NOT_SUPPORTED ;
 int psci_call (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int
_psci_get_version(struct psci_softc *sc)
{
 uint32_t fnid;


 fnid = sc->psci_fnids[PSCI_FN_VERSION];
 if (fnid)
  return (psci_call(fnid, 0, 0, 0));

 return (PSCI_RETVAL_NOT_SUPPORTED);
}
