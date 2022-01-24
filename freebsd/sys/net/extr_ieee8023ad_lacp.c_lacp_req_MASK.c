#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lagg_softc {int dummy; } ;
struct lacp_softc {struct lacp_aggregator* lsc_active_aggregator; } ;
struct lacp_opreq {int /*<<< orphan*/  partner_state; void* partner_portno; void* partner_portprio; void* partner_key; int /*<<< orphan*/  partner_mac; void* partner_prio; int /*<<< orphan*/  actor_state; void* actor_portno; void* actor_portprio; void* actor_key; int /*<<< orphan*/  actor_mac; void* actor_prio; } ;
struct TYPE_11__ {int /*<<< orphan*/  lpi_portno; int /*<<< orphan*/  lpi_prio; } ;
struct TYPE_10__ {int /*<<< orphan*/  lsi_mac; int /*<<< orphan*/  lsi_prio; } ;
struct TYPE_12__ {int /*<<< orphan*/  lip_state; TYPE_5__ lip_portid; int /*<<< orphan*/  lip_key; TYPE_4__ lip_systemid; } ;
struct TYPE_8__ {int /*<<< orphan*/  lpi_portno; int /*<<< orphan*/  lpi_prio; } ;
struct TYPE_7__ {int /*<<< orphan*/  lsi_mac; int /*<<< orphan*/  lsi_prio; } ;
struct TYPE_9__ {int /*<<< orphan*/  lip_state; TYPE_2__ lip_portid; int /*<<< orphan*/  lip_key; TYPE_1__ lip_systemid; } ;
struct lacp_aggregator {TYPE_6__ la_partner; TYPE_3__ la_actor; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct lacp_softc*) ; 
 struct lacp_softc* FUNC1 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct lacp_opreq*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct lagg_softc *sc, void *data)
{
	struct lacp_opreq *req = (struct lacp_opreq *)data;
	struct lacp_softc *lsc = FUNC1(sc);
	struct lacp_aggregator *la;

	FUNC3(req, sizeof(struct lacp_opreq));
	
	/*
	 * If the LACP softc is NULL, return with the opreq structure full of
	 * zeros.  It is normal for the softc to be NULL while the lagg is
	 * being destroyed.
	 */
	if (NULL == lsc)
		return;

	la = lsc->lsc_active_aggregator;
	FUNC0(lsc);
	if (la != NULL) {
		req->actor_prio = FUNC5(la->la_actor.lip_systemid.lsi_prio);
		FUNC4(&req->actor_mac, &la->la_actor.lip_systemid.lsi_mac,
		    ETHER_ADDR_LEN);
		req->actor_key = FUNC5(la->la_actor.lip_key);
		req->actor_portprio = FUNC5(la->la_actor.lip_portid.lpi_prio);
		req->actor_portno = FUNC5(la->la_actor.lip_portid.lpi_portno);
		req->actor_state = la->la_actor.lip_state;

		req->partner_prio = FUNC5(la->la_partner.lip_systemid.lsi_prio);
		FUNC4(&req->partner_mac, &la->la_partner.lip_systemid.lsi_mac,
		    ETHER_ADDR_LEN);
		req->partner_key = FUNC5(la->la_partner.lip_key);
		req->partner_portprio = FUNC5(la->la_partner.lip_portid.lpi_prio);
		req->partner_portno = FUNC5(la->la_partner.lip_portid.lpi_portno);
		req->partner_state = la->la_partner.lip_state;
	}
	FUNC2(lsc);
}