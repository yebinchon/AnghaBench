
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msk_softc {int msk_num_port; int msk_pflags; TYPE_2__** msk_if; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* msk_ifp; } ;
struct TYPE_3__ {int if_drv_flags; } ;


 int B0_CTST ;
 int B0_HWE_IMSK ;
 int B0_IMSK ;
 int CSR_READ_4 (struct msk_softc*,int ) ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int ) ;
 int CS_RST_SET ;
 int IFF_DRV_RUNNING ;
 int MSK_FLAG_SUSPEND ;
 int MSK_LOCK (struct msk_softc*) ;
 int MSK_PHY_POWERDOWN ;
 int MSK_UNLOCK (struct msk_softc*) ;
 struct msk_softc* device_get_softc (int ) ;
 int msk_phy_power (struct msk_softc*,int ) ;
 int msk_stop (TYPE_2__*) ;

__attribute__((used)) static int
mskc_suspend(device_t dev)
{
 struct msk_softc *sc;
 int i;

 sc = device_get_softc(dev);

 MSK_LOCK(sc);

 for (i = 0; i < sc->msk_num_port; i++) {
  if (sc->msk_if[i] != ((void*)0) && sc->msk_if[i]->msk_ifp != ((void*)0) &&
      ((sc->msk_if[i]->msk_ifp->if_drv_flags &
      IFF_DRV_RUNNING) != 0))
   msk_stop(sc->msk_if[i]);
 }


 CSR_WRITE_4(sc, B0_IMSK, 0);
 CSR_READ_4(sc, B0_IMSK);
 CSR_WRITE_4(sc, B0_HWE_IMSK, 0);
 CSR_READ_4(sc, B0_HWE_IMSK);

 msk_phy_power(sc, MSK_PHY_POWERDOWN);


 CSR_WRITE_2(sc, B0_CTST, CS_RST_SET);
 sc->msk_pflags |= MSK_FLAG_SUSPEND;

 MSK_UNLOCK(sc);

 return (0);
}
