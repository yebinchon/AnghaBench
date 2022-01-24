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
struct vtblk_softc {int /*<<< orphan*/ * vtblk_sglist; int /*<<< orphan*/ * vtblk_disk; int /*<<< orphan*/  vtblk_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VTBLK_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtblk_softc*) ; 
 struct vtblk_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vtblk_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct vtblk_softc *sc;

	sc = FUNC3(dev);

	FUNC0(sc);
	sc->vtblk_flags |= VTBLK_FLAG_DETACH;
	if (FUNC4(dev))
		FUNC8(sc);
	FUNC2(sc);

	FUNC7(sc);

	if (sc->vtblk_disk != NULL) {
		FUNC5(sc->vtblk_disk);
		sc->vtblk_disk = NULL;
	}

	if (sc->vtblk_sglist != NULL) {
		FUNC6(sc->vtblk_sglist);
		sc->vtblk_sglist = NULL;
	}

	FUNC1(sc);

	return (0);
}