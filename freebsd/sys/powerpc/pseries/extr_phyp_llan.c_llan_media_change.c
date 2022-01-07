
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifm_media; } ;
struct llan_softc {TYPE_1__ media; } ;
struct ifnet {struct llan_softc* if_softc; } ;


 int EINVAL ;
 scalar_t__ IFM_AUTO ;
 scalar_t__ IFM_ETHER ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;

__attribute__((used)) static int
llan_media_change(struct ifnet *ifp)
{
 struct llan_softc *sc = ifp->if_softc;

 if (IFM_TYPE(sc->media.ifm_media) != IFM_ETHER)
  return (EINVAL);

 if (IFM_SUBTYPE(sc->media.ifm_media) != IFM_AUTO)
  return (EINVAL);

 return (0);
}
