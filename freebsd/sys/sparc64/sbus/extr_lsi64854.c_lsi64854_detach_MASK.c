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
struct lsi64854_softc {int /*<<< orphan*/  sc_buffer_dmat; int /*<<< orphan*/  sc_dmamap; int /*<<< orphan*/ * setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct lsi64854_softc*) ; 
 int L64854_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct lsi64854_softc *sc)
{

	if (sc->setup != NULL) {
		FUNC3(sc->sc_buffer_dmat, sc->sc_dmamap,
		    (FUNC0(sc) & L64854_WRITE) != 0 ?
		    BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE);
		FUNC4(sc->sc_buffer_dmat, sc->sc_dmamap);
		FUNC2(sc->sc_buffer_dmat, sc->sc_dmamap);
		FUNC1(sc->sc_buffer_dmat);
	}

	return (0);
}