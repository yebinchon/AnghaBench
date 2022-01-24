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
struct gv_softc {int dummy; } ;
struct gv_drive {int dummy; } ;
struct g_geom {int /*<<< orphan*/  name; struct gv_softc* softc; } ;
struct g_consumer {struct gv_drive* private; struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_EVENT_DRIVE_LOST ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_drive*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct g_consumer *cp)
{
	struct g_geom *gp;
	struct gv_softc *sc;
	struct gv_drive *d;
	
	FUNC1();

	FUNC0(cp != NULL, ("gv_orphan: null cp"));
	gp = cp->geom;
	FUNC0(gp != NULL, ("gv_orphan: null gp"));
	sc = gp->softc;
	FUNC0(sc != NULL, ("gv_orphan: null sc"));
	d = cp->private;
	FUNC0(d != NULL, ("gv_orphan: null d"));

	FUNC2(G_T_TOPOLOGY, "gv_orphan(%s)", gp->name);

	FUNC3(sc, GV_EVENT_DRIVE_LOST, d, NULL, 0, 0);
}