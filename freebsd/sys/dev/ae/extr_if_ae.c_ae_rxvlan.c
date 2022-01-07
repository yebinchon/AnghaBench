
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_capenable; } ;
struct TYPE_6__ {struct ifnet* ifp; } ;
typedef TYPE_1__ ae_softc_t ;


 int AE_LOCK_ASSERT (TYPE_1__*) ;
 int AE_MAC_REG ;
 int AE_MAC_RMVLAN_EN ;
 int AE_READ_4 (TYPE_1__*,int ) ;
 int AE_WRITE_4 (TYPE_1__*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;

__attribute__((used)) static void
ae_rxvlan(ae_softc_t *sc)
{
 struct ifnet *ifp;
 uint32_t val;

 AE_LOCK_ASSERT(sc);
 ifp = sc->ifp;
 val = AE_READ_4(sc, AE_MAC_REG);
 val &= ~AE_MAC_RMVLAN_EN;
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  val |= AE_MAC_RMVLAN_EN;
 AE_WRITE_4(sc, AE_MAC_REG, val);
}
