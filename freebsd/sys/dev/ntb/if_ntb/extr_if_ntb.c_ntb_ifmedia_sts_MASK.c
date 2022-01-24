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
struct ntb_net_ctx {TYPE_1__* queues; } ;
struct ifnet {int dummy; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int /*<<< orphan*/  NTB_MEDIATYPE ; 
 struct ntb_net_ctx* FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct ntb_net_ctx *sc = FUNC0(ifp);

	ifmr->ifm_status = IFM_AVALID;
	ifmr->ifm_active = NTB_MEDIATYPE;
	if (FUNC1(sc->queues[0].qp))
		ifmr->ifm_status |= IFM_ACTIVE;
}