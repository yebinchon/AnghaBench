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
struct sfxge_softc {int txq_count; int /*<<< orphan*/  enp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sfxge_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_softc*,int) ; 

int
FUNC4(struct sfxge_softc *sc)
{
	int index;
	int rc;

	/* Initialize the common code transmit module. */
	if ((rc = FUNC1(sc->enp)) != 0)
		return (rc);

	for (index = 0; index < sc->txq_count; index++) {
		if ((rc = FUNC2(sc, index)) != 0)
			goto fail;
	}

	return (0);

fail:
	while (--index >= 0)
		FUNC3(sc, index);

	FUNC0(sc->enp);

	return (rc);
}