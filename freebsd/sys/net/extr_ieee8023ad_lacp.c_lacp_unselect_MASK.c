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
struct lacp_softc {int dummy; } ;
struct lacp_port {struct lacp_aggregator* lp_aggregator; struct lacp_softc* lp_lsc; } ;
struct lacp_aggregator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lacp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LACP_TIMER_WAIT_WHILE ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_softc*,struct lacp_aggregator*) ; 

__attribute__((used)) static void
FUNC3(struct lacp_port *lp)
{
	struct lacp_softc *lsc = lp->lp_lsc;
	struct lacp_aggregator *la = lp->lp_aggregator;

	FUNC0(!FUNC1(lp, LACP_TIMER_WAIT_WHILE),
	    ("timer_wait_while still active"));

	if (la == NULL) {
		return;
	}

	lp->lp_aggregator = NULL;
	FUNC2(lsc, la);
}