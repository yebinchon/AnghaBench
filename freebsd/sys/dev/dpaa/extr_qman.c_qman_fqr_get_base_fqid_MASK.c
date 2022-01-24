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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct qman_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct qman_softc*) ; 
 struct qman_softc* qman_sc ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

uint32_t
FUNC5(t_Handle fqr)
{
	struct qman_softc *sc;
	uint32_t val;
	t_Handle portal;

	sc = qman_sc;
	FUNC3();

	/* Ensure we have got QMan port initialized */
	portal = FUNC2(sc);
	if (portal == NULL) {
		FUNC1(sc->sc_dev, "could not setup QMan portal\n");
		FUNC4();
		return (0);
	}

	val = FUNC0(fqr);

	FUNC4();

	return (val);
}