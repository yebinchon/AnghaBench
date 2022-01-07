
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct dc_softc {int dc_miibus; scalar_t__ dc_link; } ;


 scalar_t__ DC_IS_DAVICOM (struct dc_softc*) ;
 scalar_t__ DC_IS_INTEL (struct dc_softc*) ;
 int DC_LOCK_ASSERT (struct dc_softc*) ;
 scalar_t__ IFM_HPNA_1 ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int dc_setcfg (struct dc_softc*,int ) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
dc_ifmedia_upd_locked(struct dc_softc *sc)
{
 struct mii_data *mii;
 struct ifmedia *ifm;
 int error;

 DC_LOCK_ASSERT(sc);

 sc->dc_link = 0;
 mii = device_get_softc(sc->dc_miibus);
 error = mii_mediachg(mii);
 if (error == 0) {
  ifm = &mii->mii_media;
  if (DC_IS_INTEL(sc))
   dc_setcfg(sc, ifm->ifm_media);
  else if (DC_IS_DAVICOM(sc) &&
      IFM_SUBTYPE(ifm->ifm_media) == IFM_HPNA_1)
   dc_setcfg(sc, ifm->ifm_media);
 }

 return (error);
}
