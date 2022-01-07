
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct et_softc {int sc_flags; TYPE_1__* ifp; } ;
typedef int device_t ;
struct TYPE_2__ {int if_flags; } ;


 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int EM_PM_GIGEPHY_ENB ;
 int ET_FLAG_FASTETHER ;
 int ET_LOCK (struct et_softc*) ;
 int ET_PM ;
 int ET_PM_RXCLK_GATE ;
 int ET_PM_SYSCLK_GATE ;
 int ET_PM_TXCLK_GATE ;
 int ET_UNLOCK (struct et_softc*) ;
 int IFF_UP ;
 struct et_softc* device_get_softc (int ) ;
 int et_init_locked (struct et_softc*) ;

__attribute__((used)) static int
et_resume(device_t dev)
{
 struct et_softc *sc;
 uint32_t pmcfg;

 sc = device_get_softc(dev);
 ET_LOCK(sc);

 pmcfg = ET_PM_SYSCLK_GATE | ET_PM_TXCLK_GATE | ET_PM_RXCLK_GATE;
 if ((sc->sc_flags & ET_FLAG_FASTETHER) == 0)
  pmcfg |= EM_PM_GIGEPHY_ENB;
 CSR_WRITE_4(sc, ET_PM, pmcfg);
 if ((sc->ifp->if_flags & IFF_UP) != 0)
  et_init_locked(sc);
 ET_UNLOCK(sc);
 return (0);
}
