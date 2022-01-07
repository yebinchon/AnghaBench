
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct lagg_softc {int sc_primary; } ;
struct lagg_port {int lp_ifp; } ;


 int ENETDOWN ;
 int lagg_enqueue (int ,struct mbuf*) ;
 struct lagg_port* lagg_link_active (struct lagg_softc*,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
lagg_fail_start(struct lagg_softc *sc, struct mbuf *m)
{
 struct lagg_port *lp;


 if ((lp = lagg_link_active(sc, sc->sc_primary)) == ((void*)0)) {
  m_freem(m);
  return (ENETDOWN);
 }


 return (lagg_enqueue(lp->lp_ifp, m));
}
