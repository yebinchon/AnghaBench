#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_sched_softc {int /*<<< orphan*/  sc_pending; int /*<<< orphan*/  sc_data; TYPE_1__* sc_gsched; } ;
struct g_geom {struct g_sched_softc* softc; } ;
struct bio {int /*<<< orphan*/  bio_caller1; struct g_geom* bio_caller2; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* gs_done ) (int /*<<< orphan*/ ,struct bio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_geom*) ; 

__attribute__((used)) static void
FUNC9(struct bio *bio)
{
	struct g_geom *gp = bio->bio_caller2;
	struct g_sched_softc *sc = gp->softc;

	FUNC1(DONE, bio);

	FUNC0(bio->bio_caller1, ("null bio_caller1 in g_sched_done"));

	FUNC3(gp);

	FUNC5(bio);
	sc->sc_gsched->gs_done(sc->sc_data, bio);
	if (!--sc->sc_pending)
		FUNC8(gp);

	FUNC2(gp);
	FUNC4(gp);

	FUNC6(bio);
}