
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_port {scalar_t__ mcast_count; int lock; } ;
struct sfxge_softc {int enp; struct sfxge_port port; struct ifnet* ifnet; } ;
struct ifnet {int if_flags; } ;
typedef int boolean_t ;


 int B_TRUE ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MA_OWNED ;
 int efx_mac_filter_set (int ,int,int,int,int) ;
 int mtx_assert (int *,int ) ;
 int sfxge_mac_multicast_list_set (struct sfxge_softc*) ;

__attribute__((used)) static int
sfxge_mac_filter_set_locked(struct sfxge_softc *sc)
{
 struct ifnet *ifp = sc->ifnet;
 struct sfxge_port *port = &sc->port;
 boolean_t all_mulcst;
 int rc;

 mtx_assert(&port->lock, MA_OWNED);

 all_mulcst = !!(ifp->if_flags & (IFF_PROMISC | IFF_ALLMULTI));

 rc = sfxge_mac_multicast_list_set(sc);

 if (rc != 0)
  all_mulcst = B_TRUE;

 rc = efx_mac_filter_set(sc->enp, !!(ifp->if_flags & IFF_PROMISC),
    (port->mcast_count > 0), all_mulcst, B_TRUE);

 return (rc);
}
