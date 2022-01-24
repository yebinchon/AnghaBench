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
struct lagg_port {int dummy; } ;
struct lacp_softc {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  lpi_portno; int /*<<< orphan*/  lpi_prio; } ;
struct TYPE_10__ {int /*<<< orphan*/  lsi_mac; int /*<<< orphan*/  lsi_prio; } ;
struct TYPE_12__ {int /*<<< orphan*/  lip_state; TYPE_5__ lip_portid; int /*<<< orphan*/  lip_key; TYPE_4__ lip_systemid; } ;
struct TYPE_8__ {int /*<<< orphan*/  lpi_portno; int /*<<< orphan*/  lpi_prio; } ;
struct TYPE_7__ {int /*<<< orphan*/  lsi_mac; int /*<<< orphan*/  lsi_prio; } ;
struct TYPE_9__ {int /*<<< orphan*/  lip_state; TYPE_2__ lip_portid; int /*<<< orphan*/  lip_key; TYPE_1__ lip_systemid; } ;
struct lacp_port {TYPE_6__ lp_partner; TYPE_3__ lp_actor; struct lacp_softc* lp_lsc; } ;
struct lacp_opreq {int /*<<< orphan*/  partner_state; void* partner_portno; void* partner_portprio; void* partner_key; int /*<<< orphan*/  partner_mac; void* partner_prio; int /*<<< orphan*/  actor_state; void* actor_portno; void* actor_portprio; void* actor_key; int /*<<< orphan*/  actor_mac; void* actor_prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct lacp_softc*) ; 
 struct lacp_port* FUNC1 (struct lagg_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct lagg_port *lgp, void *data)
{
	struct lacp_opreq *req = (struct lacp_opreq *)data;
	struct lacp_port *lp = FUNC1(lgp);
	struct lacp_softc *lsc = lp->lp_lsc;

	FUNC0(lsc);
	req->actor_prio = FUNC4(lp->lp_actor.lip_systemid.lsi_prio);
	FUNC3(&req->actor_mac, &lp->lp_actor.lip_systemid.lsi_mac,
	    ETHER_ADDR_LEN);
	req->actor_key = FUNC4(lp->lp_actor.lip_key);
	req->actor_portprio = FUNC4(lp->lp_actor.lip_portid.lpi_prio);
	req->actor_portno = FUNC4(lp->lp_actor.lip_portid.lpi_portno);
	req->actor_state = lp->lp_actor.lip_state;

	req->partner_prio = FUNC4(lp->lp_partner.lip_systemid.lsi_prio);
	FUNC3(&req->partner_mac, &lp->lp_partner.lip_systemid.lsi_mac,
	    ETHER_ADDR_LEN);
	req->partner_key = FUNC4(lp->lp_partner.lip_key);
	req->partner_portprio = FUNC4(lp->lp_partner.lip_portid.lpi_prio);
	req->partner_portno = FUNC4(lp->lp_partner.lip_portid.lpi_portno);
	req->partner_state = lp->lp_partner.lip_state;
	FUNC2(lsc);
}