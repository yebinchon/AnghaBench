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
struct lagg_port {struct lagg_softc* lp_softc; } ;
struct ifnet {scalar_t__ if_lagg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct lagg_softc*,struct lagg_port*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, int state)
{
	struct lagg_port *lp = (struct lagg_port *)ifp->if_lagg;
	struct lagg_softc *sc = NULL;

	if (lp != NULL)
		sc = lp->lp_softc;
	if (sc == NULL)
		return;

	FUNC0(sc);
	FUNC2(sc);
	FUNC3(sc, lp);
	FUNC1(sc);
}