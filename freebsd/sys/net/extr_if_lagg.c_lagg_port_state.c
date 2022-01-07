
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {int dummy; } ;
struct lagg_port {struct lagg_softc* lp_softc; } ;
struct ifnet {scalar_t__ if_lagg; } ;


 int LAGG_XLOCK (struct lagg_softc*) ;
 int LAGG_XUNLOCK (struct lagg_softc*) ;
 int lagg_linkstate (struct lagg_softc*) ;
 int lagg_proto_linkstate (struct lagg_softc*,struct lagg_port*) ;

__attribute__((used)) static void
lagg_port_state(struct ifnet *ifp, int state)
{
 struct lagg_port *lp = (struct lagg_port *)ifp->if_lagg;
 struct lagg_softc *sc = ((void*)0);

 if (lp != ((void*)0))
  sc = lp->lp_softc;
 if (sc == ((void*)0))
  return;

 LAGG_XLOCK(sc);
 lagg_linkstate(sc);
 lagg_proto_linkstate(sc, lp);
 LAGG_XUNLOCK(sc);
}
