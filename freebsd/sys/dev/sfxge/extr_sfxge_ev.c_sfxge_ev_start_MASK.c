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
struct sfxge_intr {scalar_t__ state; } ;
struct sfxge_softc {int evq_count; int /*<<< orphan*/  enp; struct sfxge_intr intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SFXGE_INTR_STARTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sfxge_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_softc*,int) ; 

int
FUNC5(struct sfxge_softc *sc)
{
	struct sfxge_intr *intr;
	int index;
	int rc;

	intr = &sc->intr;

	FUNC0(intr->state == SFXGE_INTR_STARTED,
	    ("intr->state != SFXGE_INTR_STARTED"));

	/* Initialize the event module */
	if ((rc = FUNC2(sc->enp)) != 0)
		return (rc);

	/* Start the event queues */
	for (index = 0; index < sc->evq_count; index++) {
		if ((rc = FUNC3(sc, index)) != 0)
			goto fail;
	}

	return (0);

fail:
	/* Stop the event queue(s) */
	while (--index >= 0)
		FUNC4(sc, index);

	/* Tear down the event module */
	FUNC1(sc->enp);

	return (rc);
}