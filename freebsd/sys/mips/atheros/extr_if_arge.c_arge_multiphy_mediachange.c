
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct arge_softc* if_softc; } ;
struct ifmedia_entry {int ifm_media; } ;
struct ifmedia {int ifm_media; struct ifmedia_entry* ifm_cur; } ;
struct arge_softc {int arge_dev; struct ifmedia arge_ifmedia; } ;


 int EINVAL ;
 scalar_t__ IFM_AUTO ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 int device_printf (int ,char*) ;

int
arge_multiphy_mediachange(struct ifnet *ifp)
{
 struct arge_softc *sc = ifp->if_softc;
 struct ifmedia *ifm = &sc->arge_ifmedia;
 struct ifmedia_entry *ife = ifm->ifm_cur;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 if (IFM_SUBTYPE(ife->ifm_media) == IFM_AUTO) {
  device_printf(sc->arge_dev,
      "AUTO is not supported for multiphy MAC");
  return (EINVAL);
 }




 return (0);
}
