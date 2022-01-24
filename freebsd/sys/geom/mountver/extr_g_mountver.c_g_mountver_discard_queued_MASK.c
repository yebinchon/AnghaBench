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
struct g_mountver_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_queue; } ;
struct g_geom {struct g_mountver_softc* softc; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,char*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_queue ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct g_geom *gp)
{
	struct g_mountver_softc *sc;
	struct bio *bp;

	sc = gp->softc;

	FUNC4(&sc->sc_mtx);
	while ((bp = FUNC1(&sc->sc_queue)) != NULL) {
		FUNC2(&sc->sc_queue, bp, bio_queue);
		FUNC0(bp, "Discarding queued request.");
		FUNC3(bp, ENXIO);
	}
	FUNC5(&sc->sc_mtx);
}