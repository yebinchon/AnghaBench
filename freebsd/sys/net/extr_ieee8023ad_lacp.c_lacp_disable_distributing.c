
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {scalar_t__ sc_active; int sc_ifp; } ;
struct lacp_softc {struct lacp_aggregator* lsc_active_aggregator; struct lagg_softc* lsc_softc; } ;
struct lacp_port {int lp_state; struct lacp_softc* lp_lsc; struct lacp_aggregator* lp_aggregator; } ;
struct lacp_aggregator {scalar_t__ la_nports; scalar_t__ la_refcnt; int la_ports; } ;
typedef int buf ;


 int KASSERT (int,char*) ;
 int LACP_DPRINTF (struct lacp_port*) ;
 int LACP_LAGIDSTR_MAX ;
 int LACP_LOCK_ASSERT (struct lacp_softc*) ;
 int LACP_STATE_DISTRIBUTING ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct lacp_port*,int ) ;
 int if_link_state_change (int ,int ) ;
 int lacp_format_lagid_aggregator (struct lacp_aggregator*,char*,int) ;
 int lacp_select_active_aggregator (struct lacp_softc*) ;
 int lacp_suppress_distributing (struct lacp_softc*,struct lacp_aggregator*) ;
 int lacp_update_portmap (struct lacp_softc*) ;
 int lp_dist_q ;

__attribute__((used)) static void
lacp_disable_distributing(struct lacp_port *lp)
{
 struct lacp_aggregator *la = lp->lp_aggregator;
 struct lacp_softc *lsc = lp->lp_lsc;
 struct lagg_softc *sc = lsc->lsc_softc;
 char buf[LACP_LAGIDSTR_MAX+1];

 LACP_LOCK_ASSERT(lsc);

 if (la == ((void*)0) || (lp->lp_state & LACP_STATE_DISTRIBUTING) == 0) {
  return;
 }

 KASSERT(!TAILQ_EMPTY(&la->la_ports), ("no aggregator ports"));
 KASSERT(la->la_nports > 0, ("nports invalid (%d)", la->la_nports));
 KASSERT(la->la_refcnt >= la->la_nports, ("aggregator refcnt invalid"));

 LACP_DPRINTF((lp, "disable distributing on aggregator %s, "
     "nports %d -> %d\n",
     lacp_format_lagid_aggregator(la, buf, sizeof(buf)),
     la->la_nports, la->la_nports - 1));

 TAILQ_REMOVE(&la->la_ports, lp, lp_dist_q);
 la->la_nports--;
 sc->sc_active = la->la_nports;

 if (lsc->lsc_active_aggregator == la) {
  lacp_suppress_distributing(lsc, la);
  lacp_select_active_aggregator(lsc);

  lacp_update_portmap(lsc);
 }

 lp->lp_state &= ~LACP_STATE_DISTRIBUTING;
 if_link_state_change(sc->sc_ifp,
     sc->sc_active ? LINK_STATE_UP : LINK_STATE_DOWN);
}
