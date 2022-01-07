
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; struct al_eth_adapter* if_softc; } ;
struct al_eth_adapter {int mii; } ;


 int IFF_UP ;
 int mii_mediachg (int ) ;

__attribute__((used)) static int
al_media_update(struct ifnet *ifp)
{
 struct al_eth_adapter *adapter = ifp->if_softc;

 if ((ifp->if_flags & IFF_UP) != 0)
  mii_mediachg(adapter->mii);

 return (0);
}
