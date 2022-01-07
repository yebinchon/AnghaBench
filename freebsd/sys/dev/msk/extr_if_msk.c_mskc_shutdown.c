
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msk_softc {int msk_num_port; TYPE_2__** msk_if; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* msk_ifp; } ;
struct TYPE_3__ {int if_drv_flags; } ;


 int B0_CTST ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int ) ;
 int CS_RST_SET ;
 int IFF_DRV_RUNNING ;
 int MSK_LOCK (struct msk_softc*) ;
 int MSK_UNLOCK (struct msk_softc*) ;
 struct msk_softc* device_get_softc (int ) ;
 int msk_stop (TYPE_2__*) ;

__attribute__((used)) static int
mskc_shutdown(device_t dev)
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
 MSK_UNLOCK(sc);


 CSR_WRITE_2(sc, B0_CTST, CS_RST_SET);
 return (0);
}
