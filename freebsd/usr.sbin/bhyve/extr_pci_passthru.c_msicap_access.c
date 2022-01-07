
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capoff; int msgctrl; } ;
struct passthru_softc {TYPE_1__ psc_msi; } ;


 int msi_caplen (int ) ;

__attribute__((used)) static int
msicap_access(struct passthru_softc *sc, int coff)
{
 int caplen;

 if (sc->psc_msi.capoff == 0)
  return (0);

 caplen = msi_caplen(sc->psc_msi.msgctrl);

 if (coff >= sc->psc_msi.capoff && coff < sc->psc_msi.capoff + caplen)
  return (1);
 else
  return (0);
}
