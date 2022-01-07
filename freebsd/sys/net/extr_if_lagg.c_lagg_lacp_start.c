
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct lagg_softc {int dummy; } ;
struct lagg_port {int lp_ifp; } ;


 int ENETDOWN ;
 struct lagg_port* lacp_select_tx_port (struct lagg_softc*,struct mbuf*) ;
 int lagg_enqueue (int ,struct mbuf*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
lagg_lacp_start(struct lagg_softc *sc, struct mbuf *m)
{
 struct lagg_port *lp;

 lp = lacp_select_tx_port(sc, m);
 if (lp == ((void*)0)) {
  m_freem(m);
  return (ENETDOWN);
 }


 return (lagg_enqueue(lp->lp_ifp, m));
}
