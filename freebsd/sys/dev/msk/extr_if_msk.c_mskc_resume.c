
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msk_softc {int msk_num_port; int msk_pflags; TYPE_2__** msk_if; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* msk_ifp; } ;
struct TYPE_3__ {int if_flags; int if_drv_flags; } ;


 int CSR_PCI_WRITE_4 (struct msk_softc*,int ,int ) ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int MSK_FLAG_SUSPEND ;
 int MSK_LOCK (struct msk_softc*) ;
 int MSK_UNLOCK (struct msk_softc*) ;
 int PCI_OUR_REG_3 ;
 struct msk_softc* device_get_softc (int ) ;
 int msk_init_locked (TYPE_2__*) ;
 int mskc_reset (struct msk_softc*) ;

__attribute__((used)) static int
mskc_resume(device_t dev)
{
 struct msk_softc *sc;
 int i;

 sc = device_get_softc(dev);

 MSK_LOCK(sc);

 CSR_PCI_WRITE_4(sc, PCI_OUR_REG_3, 0);
 mskc_reset(sc);
 for (i = 0; i < sc->msk_num_port; i++) {
  if (sc->msk_if[i] != ((void*)0) && sc->msk_if[i]->msk_ifp != ((void*)0) &&
      ((sc->msk_if[i]->msk_ifp->if_flags & IFF_UP) != 0)) {
   sc->msk_if[i]->msk_ifp->if_drv_flags &=
       ~IFF_DRV_RUNNING;
   msk_init_locked(sc->msk_if[i]);
  }
 }
 sc->msk_pflags &= ~MSK_FLAG_SUSPEND;

 MSK_UNLOCK(sc);

 return (0);
}
