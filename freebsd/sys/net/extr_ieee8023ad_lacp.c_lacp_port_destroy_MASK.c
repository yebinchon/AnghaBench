#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lagg_port {int /*<<< orphan*/  lp_detaching; } ;
struct lacp_softc {int dummy; } ;
struct lacp_port {int /*<<< orphan*/  lp_ifma; struct lacp_softc* lp_lsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lacp_softc*) ; 
 int LACP_NTIMER ; 
 struct lacp_port* FUNC1 (struct lagg_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lacp_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct lacp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC5 (struct lacp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lacp_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct lacp_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct lacp_port*) ; 
 int /*<<< orphan*/  lp_next ; 

void
FUNC10(struct lagg_port *lgp)
{
	struct lacp_port *lp = FUNC1(lgp);
	struct lacp_softc *lsc = lp->lp_lsc;
	int i;

	FUNC0(lsc);
	for (i = 0; i < LACP_NTIMER; i++) {
		FUNC2(lp, i);
	}

	FUNC7(lp);
	FUNC8(lp);
	FUNC9(lp);

	FUNC4(lp, lp_next);
	FUNC3(lsc);

	/* The address may have already been removed by if_purgemaddrs() */
	if (!lgp->lp_detaching)
		FUNC6(lp->lp_ifma);

	FUNC5(lp, M_DEVBUF);
}