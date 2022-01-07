
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ifnet {int dummy; } ;
struct bridge_softc {int dummy; } ;
struct bridge_rtnode {struct ifnet* brt_ifp; } ;


 int BRIDGE_LOCK_ASSERT (struct bridge_softc*) ;
 struct bridge_rtnode* bridge_rtnode_lookup (struct bridge_softc*,int const*,int ) ;

__attribute__((used)) static struct ifnet *
bridge_rtlookup(struct bridge_softc *sc, const uint8_t *addr, uint16_t vlan)
{
 struct bridge_rtnode *brt;

 BRIDGE_LOCK_ASSERT(sc);

 if ((brt = bridge_rtnode_lookup(sc, addr, vlan)) == ((void*)0))
  return (((void*)0));

 return (brt->brt_ifp);
}
