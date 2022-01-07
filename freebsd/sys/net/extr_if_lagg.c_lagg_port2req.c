
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_softc {int sc_proto; struct lagg_port* sc_primary; int sc_ifname; } ;
struct lagg_reqport {int rp_flags; int rp_psc; int rp_prio; int rp_portname; int rp_ifname; } ;
struct lagg_port {int lp_flags; int lp_prio; TYPE_1__* lp_ifp; struct lagg_softc* lp_softc; } ;
struct TYPE_2__ {int if_xname; } ;


 int LAGG_PORTACTIVE (struct lagg_port*) ;
 int LAGG_PORT_ACTIVE ;
 int LAGG_PORT_COLLECTING ;
 int LAGG_PORT_DISTRIBUTING ;
 int LAGG_PORT_MASTER ;





 int lacp_isactive (struct lagg_port*) ;
 int lacp_iscollecting (struct lagg_port*) ;
 int lacp_isdistributing (struct lagg_port*) ;
 struct lagg_port* lagg_link_active (struct lagg_softc*,struct lagg_port*) ;
 int lagg_proto_portreq (struct lagg_softc*,struct lagg_port*,int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
lagg_port2req(struct lagg_port *lp, struct lagg_reqport *rp)
{
 struct lagg_softc *sc = lp->lp_softc;

 strlcpy(rp->rp_ifname, sc->sc_ifname, sizeof(rp->rp_ifname));
 strlcpy(rp->rp_portname, lp->lp_ifp->if_xname, sizeof(rp->rp_portname));
 rp->rp_prio = lp->lp_prio;
 rp->rp_flags = lp->lp_flags;
 lagg_proto_portreq(sc, lp, &rp->rp_psc);


 switch (sc->sc_proto) {
  case 131:
   if (lp == sc->sc_primary)
    rp->rp_flags |= LAGG_PORT_MASTER;
   if (lp == lagg_link_active(sc, sc->sc_primary))
    rp->rp_flags |= LAGG_PORT_ACTIVE;
   break;

  case 128:
  case 129:
  case 132:
   if (LAGG_PORTACTIVE(lp))
    rp->rp_flags |= LAGG_PORT_ACTIVE;
   break;

  case 130:

   if (lacp_isactive(lp))
    rp->rp_flags |= LAGG_PORT_ACTIVE;
   if (lacp_iscollecting(lp))
    rp->rp_flags |= LAGG_PORT_COLLECTING;
   if (lacp_isdistributing(lp))
    rp->rp_flags |= LAGG_PORT_DISTRIBUTING;
   break;
 }

}
