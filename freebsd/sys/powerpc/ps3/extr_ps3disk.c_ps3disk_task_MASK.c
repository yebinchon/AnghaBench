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
struct ps3disk_softc {int /*<<< orphan*/  sc_dmatag; int /*<<< orphan*/  sc_deferredq; int /*<<< orphan*/  sc_task; } ;
struct bio {int /*<<< orphan*/ * bio_driver1; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (struct ps3disk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ps3disk_softc*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct ps3disk_softc *sc = (struct ps3disk_softc *) arg;
	struct bio *bp;

	
	while (1) {
		FUNC6(sc->sc_task);
		FUNC8(&sc->sc_deferredq, PRIBIO, "ps3disk", 10);

		FUNC0(sc);
		bp = FUNC2(&sc->sc_deferredq);
		FUNC1(sc);

		if (bp == NULL)
			continue;

		if (bp->bio_driver1 != NULL) {
			FUNC4(sc->sc_dmatag, (bus_dmamap_t)
			    bp->bio_driver1);
			FUNC3(sc->sc_dmatag, (bus_dmamap_t)
			    bp->bio_driver1);
		}

		FUNC7(bp);
	}

	FUNC5(0);
}