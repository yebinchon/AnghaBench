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
typedef  int /*<<< orphan*/ * t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
struct qman_softc {int /*<<< orphan*/  sc_qh; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  e_QmPortalPollSource ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct qman_softc*) ; 
 struct qman_softc* qman_sc ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

t_Error
FUNC5(e_QmPortalPollSource source)
{
	struct qman_softc *sc;
	t_Error error;
	t_Handle portal;

	sc = qman_sc;
	FUNC3();

	/* Ensure we have got QMan port initialized */
	portal = FUNC2(sc);
	if (portal == NULL) {
		FUNC1(sc->sc_dev, "could not setup QMan portal\n");
		FUNC4();
		return (E_NOT_SUPPORTED);
	}

	error = FUNC0(sc->sc_qh, source);

	FUNC4();

	return (error);
}