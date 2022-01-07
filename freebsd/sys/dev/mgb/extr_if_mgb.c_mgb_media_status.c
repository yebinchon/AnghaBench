
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct mgb_softc {int miibus; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
typedef int if_t ;


 int IFF_UP ;
 struct mii_data* device_get_softc (int ) ;
 int if_getflags (int ) ;
 int if_getsoftc (int ) ;
 struct mgb_softc* iflib_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
mgb_media_status(if_t ifp, struct ifmediareq *ifmr)
{
 struct mgb_softc *sc;
 struct mii_data *miid;

 sc = iflib_get_softc(if_getsoftc(ifp));
 miid = device_get_softc(sc->miibus);
 if ((if_getflags(ifp) & IFF_UP) == 0)
  return;

 mii_pollstat(miid);
 ifmr->ifm_active = miid->mii_media_active;
 ifmr->ifm_status = miid->mii_media_status;
}
