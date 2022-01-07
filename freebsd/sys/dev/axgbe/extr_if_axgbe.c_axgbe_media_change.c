
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ifnet {struct axgbe_softc* if_softc; } ;
struct TYPE_9__ {int (* phy_config_aneg ) (TYPE_5__*) ;} ;
struct TYPE_8__ {void* autoneg; int speed; } ;
struct TYPE_10__ {TYPE_4__ phy_if; int an_mutex; TYPE_3__ phy; } ;
struct TYPE_7__ {TYPE_1__* ifm_cur; } ;
struct axgbe_softc {TYPE_5__ prv; TYPE_2__ media; } ;
struct TYPE_6__ {int ifm_media; } ;


 void* AUTONEG_DISABLE ;
 void* AUTONEG_ENABLE ;




 int IFM_SUBTYPE (int) ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;
 int stub1 (TYPE_5__*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
axgbe_media_change(struct ifnet *ifp)
{
 struct axgbe_softc *sc;
 int cur_media;

 sc = ifp->if_softc;

 sx_xlock(&sc->prv.an_mutex);
 cur_media = sc->media.ifm_cur->ifm_media;

 switch (IFM_SUBTYPE(cur_media)) {
 case 130:
  sc->prv.phy.speed = SPEED_10000;
  sc->prv.phy.autoneg = AUTONEG_DISABLE;
  break;
 case 129:
  sc->prv.phy.speed = SPEED_2500;
  sc->prv.phy.autoneg = AUTONEG_DISABLE;
  break;
 case 131:
  sc->prv.phy.speed = SPEED_1000;
  sc->prv.phy.autoneg = AUTONEG_DISABLE;
  break;
 case 128:
  sc->prv.phy.autoneg = AUTONEG_ENABLE;
  break;
 }
 sx_xunlock(&sc->prv.an_mutex);

 return (-sc->prv.phy_if.phy_config_aneg(&sc->prv));
}
