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
struct g_shsec_softc {int dummy; } ;
struct g_geom {struct g_shsec_softc* softc; } ;
struct g_consumer {struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_shsec_softc*,int) ; 
 scalar_t__ FUNC1 (struct g_shsec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct g_consumer *cp)
{
	struct g_shsec_softc *sc;
	struct g_geom *gp;

	FUNC3();
	gp = cp->geom;
	sc = gp->softc;
	if (sc == NULL)
		return;

	FUNC2(cp);
	/* If there are no valid disks anymore, remove device. */
	if (FUNC1(sc) == 0)
		FUNC0(sc, 1);
}