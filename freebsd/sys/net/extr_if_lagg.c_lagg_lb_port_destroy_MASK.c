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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lagg_softc*,struct lagg_port*) ; 

__attribute__((used)) static void
FUNC1(struct lagg_port *lp)
{
	struct lagg_softc *sc = lp->lp_softc;
	FUNC0(sc, lp);
}