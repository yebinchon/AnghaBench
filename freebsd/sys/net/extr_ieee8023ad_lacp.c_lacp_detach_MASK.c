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
struct lacp_softc {int /*<<< orphan*/  lsc_callout; int /*<<< orphan*/  lsc_transit_callout; int /*<<< orphan*/ * lsc_active_aggregator; int /*<<< orphan*/  lsc_aggregators; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lacp_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lacp_softc*,int /*<<< orphan*/ ) ; 

void
FUNC5(void *psc)
{
	struct lacp_softc *lsc = (struct lacp_softc *)psc;

	FUNC0(FUNC2(&lsc->lsc_aggregators),
	    ("aggregators still active"));
	FUNC0(lsc->lsc_active_aggregator == NULL,
	    ("aggregator still attached"));

	FUNC3(&lsc->lsc_transit_callout);
	FUNC3(&lsc->lsc_callout);

	FUNC1(lsc);
	FUNC4(lsc, M_DEVBUF);
}