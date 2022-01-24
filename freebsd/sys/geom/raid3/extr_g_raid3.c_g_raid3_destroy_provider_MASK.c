#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_raid3_softc {int /*<<< orphan*/ * sc_syncdisk; TYPE_1__* sc_provider; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_raid3_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct g_raid3_softc *sc)
{
	struct bio *bp;

	FUNC7();
	FUNC1(sc->sc_provider != NULL, ("NULL provider (device=%s).",
	    sc->sc_name));

	FUNC8();
	FUNC4(sc->sc_provider, ENXIO);
	FUNC11(&sc->sc_queue_mtx);
	while ((bp = FUNC2(&sc->sc_queue)) != NULL) {
		FUNC3(&sc->sc_queue, bp);
		FUNC5(bp, ENXIO);
	}
	FUNC12(&sc->sc_queue_mtx);
	FUNC0(0, "Device %s: provider %s destroyed.", sc->sc_name,
	    sc->sc_provider->name);
	FUNC10(sc->sc_provider, ENXIO);
	FUNC9();
	sc->sc_provider = NULL;
	if (sc->sc_syncdisk != NULL)
		FUNC6(sc, 1);
}