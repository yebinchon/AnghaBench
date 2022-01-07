
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct et_softc {TYPE_1__* ifp; } ;
typedef int device_t ;
struct TYPE_2__ {int if_drv_flags; } ;


 int CSR_READ_4 (struct et_softc*,int ) ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int EM_PM_GIGEPHY_ENB ;
 int ET_LOCK (struct et_softc*) ;
 int ET_PM ;
 int ET_PM_PHY_SW_COMA ;
 int ET_PM_RXCLK_GATE ;
 int ET_PM_SYSCLK_GATE ;
 int ET_PM_TXCLK_GATE ;
 int ET_UNLOCK (struct et_softc*) ;
 int IFF_DRV_RUNNING ;
 struct et_softc* device_get_softc (int ) ;
 int et_stop (struct et_softc*) ;

__attribute__((used)) static int
et_suspend(device_t dev)
{
 struct et_softc *sc;
 uint32_t pmcfg;

 sc = device_get_softc(dev);
 ET_LOCK(sc);
 if ((sc->ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  et_stop(sc);

 pmcfg = CSR_READ_4(sc, ET_PM);
 pmcfg &= ~(EM_PM_GIGEPHY_ENB | ET_PM_SYSCLK_GATE | ET_PM_TXCLK_GATE |
     ET_PM_RXCLK_GATE);
 pmcfg |= ET_PM_PHY_SW_COMA;
 CSR_WRITE_4(sc, ET_PM, pmcfg);
 ET_UNLOCK(sc);
 return (0);
}
