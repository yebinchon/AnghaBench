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
struct openpic_softc {int /*<<< orphan*/ * sc_saved_vectors; int /*<<< orphan*/  sc_memr; TYPE_1__* sc_saved_timers; int /*<<< orphan*/ * sc_saved_prios; int /*<<< orphan*/ * sc_saved_ipis; int /*<<< orphan*/  sc_saved_config; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  tdst; int /*<<< orphan*/  tvec; int /*<<< orphan*/  tbase; int /*<<< orphan*/  tcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPENPIC_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OPENPIC_NIPIS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int OPENPIC_SRC_VECTOR_COUNT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int OPENPIC_TIMERS ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct openpic_softc* FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(device_t dev)
{
    	struct openpic_softc *sc;
    	int i;

    	sc = FUNC9(dev);

	sc->sc_saved_config = FUNC7(sc->sc_memr, OPENPIC_CONFIG);
	for (i = 0; i < OPENPIC_NIPIS; i++) {
		FUNC8(sc->sc_memr, FUNC0(i), sc->sc_saved_ipis[i]);
	}

	for (i = 0; i < 4; i++) {
		FUNC8(sc->sc_memr, FUNC1(i), sc->sc_saved_prios[i]);
	}

	for (i = 0; i < OPENPIC_TIMERS; i++) {
		FUNC8(sc->sc_memr, FUNC4(i), sc->sc_saved_timers[i].tcnt);
		FUNC8(sc->sc_memr, FUNC3(i), sc->sc_saved_timers[i].tbase);
		FUNC8(sc->sc_memr, FUNC6(i), sc->sc_saved_timers[i].tvec);
		FUNC8(sc->sc_memr, FUNC5(i), sc->sc_saved_timers[i].tdst);
	}

	for (i = 0; i < OPENPIC_SRC_VECTOR_COUNT; i++)
		FUNC8(sc->sc_memr, FUNC2(i), sc->sc_saved_vectors[i]);

	return (0);
}