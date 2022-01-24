#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lagg_softc {int sc_proto; struct lagg_port* sc_primary; int /*<<< orphan*/  sc_ifname; } ;
struct lagg_reqport {int /*<<< orphan*/  rp_flags; int /*<<< orphan*/  rp_psc; int /*<<< orphan*/  rp_prio; int /*<<< orphan*/  rp_portname; int /*<<< orphan*/  rp_ifname; } ;
struct lagg_port {int /*<<< orphan*/  lp_flags; int /*<<< orphan*/  lp_prio; TYPE_1__* lp_ifp; struct lagg_softc* lp_softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lagg_port*) ; 
 int /*<<< orphan*/  LAGG_PORT_ACTIVE ; 
 int /*<<< orphan*/  LAGG_PORT_COLLECTING ; 
 int /*<<< orphan*/  LAGG_PORT_DISTRIBUTING ; 
 int /*<<< orphan*/  LAGG_PORT_MASTER ; 
#define  LAGG_PROTO_BROADCAST 132 
#define  LAGG_PROTO_FAILOVER 131 
#define  LAGG_PROTO_LACP 130 
#define  LAGG_PROTO_LOADBALANCE 129 
#define  LAGG_PROTO_ROUNDROBIN 128 
 int /*<<< orphan*/  FUNC1 (struct lagg_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct lagg_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct lagg_port*) ; 
 struct lagg_port* FUNC4 (struct lagg_softc*,struct lagg_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct lagg_softc*,struct lagg_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct lagg_port *lp, struct lagg_reqport *rp)
{
	struct lagg_softc *sc = lp->lp_softc;

	FUNC6(rp->rp_ifname, sc->sc_ifname, sizeof(rp->rp_ifname));
	FUNC6(rp->rp_portname, lp->lp_ifp->if_xname, sizeof(rp->rp_portname));
	rp->rp_prio = lp->lp_prio;
	rp->rp_flags = lp->lp_flags;
	FUNC5(sc, lp, &rp->rp_psc);

	/* Add protocol specific flags */
	switch (sc->sc_proto) {
		case LAGG_PROTO_FAILOVER:
			if (lp == sc->sc_primary)
				rp->rp_flags |= LAGG_PORT_MASTER;
			if (lp == FUNC4(sc, sc->sc_primary))
				rp->rp_flags |= LAGG_PORT_ACTIVE;
			break;

		case LAGG_PROTO_ROUNDROBIN:
		case LAGG_PROTO_LOADBALANCE:
		case LAGG_PROTO_BROADCAST:
			if (FUNC0(lp))
				rp->rp_flags |= LAGG_PORT_ACTIVE;
			break;

		case LAGG_PROTO_LACP:
			/* LACP has a different definition of active */
			if (FUNC1(lp))
				rp->rp_flags |= LAGG_PORT_ACTIVE;
			if (FUNC2(lp))
				rp->rp_flags |= LAGG_PORT_COLLECTING;
			if (FUNC3(lp))
				rp->rp_flags |= LAGG_PORT_DISTRIBUTING;
			break;
	}

}