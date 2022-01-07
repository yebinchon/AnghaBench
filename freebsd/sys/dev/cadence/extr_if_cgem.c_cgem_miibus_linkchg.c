
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; scalar_t__ mii_media_active; } ;
struct cgem_softc {scalar_t__ mii_media_active; int miibus; } ;
typedef int device_t ;


 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int cgem_mediachange (struct cgem_softc*,struct mii_data*) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
cgem_miibus_linkchg(device_t dev)
{
 struct cgem_softc *sc = device_get_softc(dev);
 struct mii_data *mii = device_get_softc(sc->miibus);

 CGEM_ASSERT_LOCKED(sc);

 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID) &&
     sc->mii_media_active != mii->mii_media_active)
  cgem_mediachange(sc, mii);
}
