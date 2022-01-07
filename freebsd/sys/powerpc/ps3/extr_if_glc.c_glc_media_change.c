
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ifnet {struct glc_softc* if_softc; } ;
struct TYPE_2__ {int ifm_media; } ;
struct glc_softc {int sc_dev; int sc_bus; TYPE_1__ sc_media; } ;


 int EINVAL ;
 int EIO ;
 int GELIC_AUTO_NEG ;
 int GELIC_FULL_DUPLEX ;
 int GELIC_SET_LINK_MODE ;
 int GELIC_SPEED_10 ;
 int GELIC_SPEED_100 ;
 int GELIC_SPEED_1000 ;
 int GELIC_VLAN_TX_ETHERNET ;




 scalar_t__ IFM_ETHER ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 scalar_t__ IFM_TYPE (int ) ;
 int lv1_net_control (int ,int ,int ,int ,int,int ,int*,int*) ;

__attribute__((used)) static int
glc_media_change(struct ifnet *ifp)
{
 struct glc_softc *sc = ifp->if_softc;
 uint64_t mode, junk;
 int result;

 if (IFM_TYPE(sc->sc_media.ifm_media) != IFM_ETHER)
  return (EINVAL);

 switch (IFM_SUBTYPE(sc->sc_media.ifm_media)) {
 case 128:
  mode = GELIC_AUTO_NEG;
  break;
 case 129:
  mode = GELIC_SPEED_10;
  break;
 case 130:
  mode = GELIC_SPEED_100;
  break;
 case 131:
  mode = GELIC_SPEED_1000 | GELIC_FULL_DUPLEX;
  break;
 default:
  return (EINVAL);
 }

 if (IFM_OPTIONS(sc->sc_media.ifm_media) & IFM_FDX)
  mode |= GELIC_FULL_DUPLEX;

 result = lv1_net_control(sc->sc_bus, sc->sc_dev, GELIC_SET_LINK_MODE,
     GELIC_VLAN_TX_ETHERNET, mode, 0, &junk, &junk);

 return (result ? EIO : 0);
}
