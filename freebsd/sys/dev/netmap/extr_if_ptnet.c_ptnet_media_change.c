
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct ptnet_softc {struct ifmedia media; } ;
typedef int if_t ;


 int EINVAL ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_TYPE (int ) ;
 struct ptnet_softc* if_getsoftc (int ) ;

__attribute__((used)) static int
ptnet_media_change(if_t ifp)
{
 struct ptnet_softc *sc = if_getsoftc(ifp);
 struct ifmedia *ifm = &sc->media;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER) {
  return EINVAL;
 }

 return 0;
}
