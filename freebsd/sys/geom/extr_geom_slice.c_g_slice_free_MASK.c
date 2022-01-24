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
struct g_slicer {struct g_slicer* softc; struct g_slicer* hotspot; struct g_slicer* slices; } ;
struct g_geom {struct g_slicer* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_slicer*) ; 

__attribute__((used)) static void
FUNC1(struct g_geom *gp)
{
	struct g_slicer *gsp;

	gsp = gp->softc;
	gp->softc = NULL;

	/*
	 * We can get multiple spoiled events before wither-washer
	 * detaches our consumer, so this can get called multiple
	 * times.
	 */
	if (gsp == NULL)
		return;
	FUNC0(gsp->slices);
	if (gsp->hotspot != NULL)
		FUNC0(gsp->hotspot);
	if (gsp->softc != NULL)
		FUNC0(gsp->softc);
	FUNC0(gsp);
}