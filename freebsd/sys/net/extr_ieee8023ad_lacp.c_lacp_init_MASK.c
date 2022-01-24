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
struct lagg_softc {int dummy; } ;
struct lacp_softc {int /*<<< orphan*/  lsc_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lacp_softc*) ; 
 struct lacp_softc* FUNC1 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lacp_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  lacp_tick ; 

void
FUNC4(struct lagg_softc *sc)
{
	struct lacp_softc *lsc = FUNC1(sc);

	FUNC0(lsc);
	FUNC3(&lsc->lsc_callout, hz, lacp_tick, lsc);
	FUNC2(lsc);
}