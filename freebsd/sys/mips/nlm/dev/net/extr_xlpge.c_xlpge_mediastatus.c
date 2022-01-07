
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlm_xlpge_softc {scalar_t__ link; scalar_t__ mii_bus; } ;
struct TYPE_4__ {TYPE_1__* ifm_cur; } ;
struct mii_data {TYPE_2__ mii_media; } ;
struct ifnet {struct nlm_xlpge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct TYPE_3__ {int ifm_media; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 scalar_t__ NLM_LINK_DOWN ;
 struct mii_data* device_get_softc (scalar_t__) ;

__attribute__((used)) static void
xlpge_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct nlm_xlpge_softc *sc;
 struct mii_data *md;

 md = ((void*)0);
 sc = ifp->if_softc;

 if (sc->mii_bus)
  md = device_get_softc(sc->mii_bus);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if (sc->link == NLM_LINK_DOWN)
  return;

 if (md != ((void*)0))
  ifmr->ifm_active = md->mii_media.ifm_cur->ifm_media;
 ifmr->ifm_status |= IFM_ACTIVE;
}
