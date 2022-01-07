
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct lagg_softc {scalar_t__ sc_proto; struct ifnet* sc_ifp; } ;
struct lagg_port {scalar_t__ lp_detaching; struct lagg_softc* lp_softc; } ;
struct ifnet {int if_drv_flags; int if_flags; struct lagg_port* if_lagg; } ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_RUNNING ;
 int IFF_MONITOR ;
 scalar_t__ LAGG_PROTO_NONE ;
 int LAGG_RLOCK () ;
 int LAGG_RUNLOCK () ;
 struct mbuf* lagg_proto_input (struct lagg_softc*,struct lagg_port*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static struct mbuf *
lagg_input(struct ifnet *ifp, struct mbuf *m)
{
 struct lagg_port *lp = ifp->if_lagg;
 struct lagg_softc *sc = lp->lp_softc;
 struct ifnet *scifp = sc->sc_ifp;

 LAGG_RLOCK();
 if ((scifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
     lp->lp_detaching != 0 ||
     sc->sc_proto == LAGG_PROTO_NONE) {
  LAGG_RUNLOCK();
  m_freem(m);
  return (((void*)0));
 }

 ETHER_BPF_MTAP(scifp, m);

 m = lagg_proto_input(sc, lp, m);
 if (m != ((void*)0) && (scifp->if_flags & IFF_MONITOR) != 0) {
  m_freem(m);
  m = ((void*)0);
 }

 LAGG_RUNLOCK();
 return (m);
}
