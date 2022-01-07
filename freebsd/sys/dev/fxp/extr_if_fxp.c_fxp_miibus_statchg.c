
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct fxp_softc {int flags; int cu_resume_bug; scalar_t__ revision; void* ifp; int miibus; } ;
typedef void* if_t ;
typedef int device_t ;


 int FXP_FLAG_CU_RESUME_BUG ;
 scalar_t__ FXP_REV_82557 ;
 int IFF_DRV_RUNNING ;
 scalar_t__ IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 void* device_get_softc (int ) ;
 int fxp_init_body (struct fxp_softc*,int ) ;
 int if_getdrvflags (void*) ;
 int if_setdrvflagbits (void*,int ,int) ;

__attribute__((used)) static void
fxp_miibus_statchg(device_t dev)
{
 struct fxp_softc *sc;
 struct mii_data *mii;
 if_t ifp;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->miibus);
 ifp = sc->ifp;
 if (mii == ((void*)0) || ifp == (void *)((void*)0) ||
     (if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0 ||
     (mii->mii_media_status & (IFM_AVALID | IFM_ACTIVE)) !=
     (IFM_AVALID | IFM_ACTIVE))
  return;

 if (IFM_SUBTYPE(mii->mii_media_active) == IFM_10_T &&
     sc->flags & FXP_FLAG_CU_RESUME_BUG)
  sc->cu_resume_bug = 1;
 else
  sc->cu_resume_bug = 0;




 if (sc->revision == FXP_REV_82557)
  return;
 if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
 fxp_init_body(sc, 0);
}
