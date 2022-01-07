
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capoff; } ;
struct passthru_softc {TYPE_1__ psc_msix; } ;


 int MSIX_CAPLEN ;

__attribute__((used)) static int
msixcap_access(struct passthru_softc *sc, int coff)
{
 if (sc->psc_msix.capoff == 0)
  return (0);

 return (coff >= sc->psc_msix.capoff &&
         coff < sc->psc_msix.capoff + MSIX_CAPLEN);
}
