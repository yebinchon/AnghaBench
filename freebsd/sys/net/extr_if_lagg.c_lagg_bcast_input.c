
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ifnet* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct lagg_softc {struct ifnet* sc_ifp; } ;
struct lagg_port {int dummy; } ;
struct ifnet {int dummy; } ;



__attribute__((used)) static struct mbuf*
lagg_bcast_input(struct lagg_softc *sc, struct lagg_port *lp, struct mbuf *m)
{
 struct ifnet *ifp = sc->sc_ifp;


 m->m_pkthdr.rcvif = ifp;
 return (m);
}
