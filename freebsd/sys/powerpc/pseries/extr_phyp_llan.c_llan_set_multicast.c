
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llan_softc {int unit; int io_lock; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int H_MULTICAST_CTRL ;
 int LLAN_CLEAR_MULTICAST ;
 int MA_OWNED ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct llan_softc*) ;
 int llan_set_maddr ;
 int mtx_assert (int *,int ) ;
 int phyp_hcall (int ,int ,int ,int ) ;

__attribute__((used)) static int
llan_set_multicast(struct llan_softc *sc)
{
 struct ifnet *ifp = sc->ifp;

 mtx_assert(&sc->io_lock, MA_OWNED);

 phyp_hcall(H_MULTICAST_CTRL, sc->unit, LLAN_CLEAR_MULTICAST, 0);

 if_foreach_llmaddr(ifp, llan_set_maddr, sc);

 return (0);
}
