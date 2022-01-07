
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ifmedia {int ifm_media; } ;
struct bxe_softc {struct ifmedia ifmedia; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int DBG_LOAD ;
 int EINVAL ;





 scalar_t__ IFM_ETHER ;
 int IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 scalar_t__ if_getsoftc (struct ifnet*) ;

__attribute__((used)) static int
bxe_ifmedia_update(struct ifnet *ifp)
{
    struct bxe_softc *sc = (struct bxe_softc *)if_getsoftc(ifp);
    struct ifmedia *ifm;

    ifm = &sc->ifmedia;


    if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER) {
        return (EINVAL);
    }

    switch (IFM_SUBTYPE(ifm->ifm_media)) {
    case 128:
         break;
    case 132:
    case 131:
    case 130:
    case 129:
    default:

        BLOGD(sc, DBG_LOAD, "Invalid media type (%d)\n",
              IFM_SUBTYPE(ifm->ifm_media));
        return (EINVAL);
    }

    return (0);
}
