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
struct ntb_net_ctx {TYPE_1__* queues; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
struct TYPE_2__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct ntb_net_ctx *sc = arg;
	if_t ifp = sc->ifp;

	FUNC2(ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);
	FUNC1(ifp, FUNC4(sc->queues[0].qp));
	FUNC0(ifp, FUNC3(sc->queues[0].qp) ?
	    LINK_STATE_UP : LINK_STATE_DOWN);
}