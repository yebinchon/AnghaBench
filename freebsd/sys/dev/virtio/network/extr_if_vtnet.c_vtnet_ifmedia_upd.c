
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct vtnet_softc {struct ifmedia vtnet_media; } ;
struct ifnet {struct vtnet_softc* if_softc; } ;


 int EINVAL ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_TYPE (int ) ;

__attribute__((used)) static int
vtnet_ifmedia_upd(struct ifnet *ifp)
{
 struct vtnet_softc *sc;
 struct ifmedia *ifm;

 sc = ifp->if_softc;
 ifm = &sc->vtnet_media;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 return (0);
}
