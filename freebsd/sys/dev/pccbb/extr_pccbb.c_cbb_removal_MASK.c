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
struct cbb_softc {int flags; int /*<<< orphan*/  cbdev; int /*<<< orphan*/ * exca; scalar_t__ cardok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CBB_16BIT_CARD ; 
 int /*<<< orphan*/  FUNC1 (struct cbb_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct cbb_softc *sc)
{
	sc->cardok = 0;
	if (sc->flags & CBB_16BIT_CARD) {
		FUNC3(&sc->exca[0]);
	} else {
		if (FUNC2(sc->cbdev))
			FUNC0(sc->cbdev);
	}
	FUNC1(sc);
}