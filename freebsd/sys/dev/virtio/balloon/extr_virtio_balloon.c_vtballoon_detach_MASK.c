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
struct vtballoon_softc {int /*<<< orphan*/ * vtballoon_page_frames; int /*<<< orphan*/ * vtballoon_td; int /*<<< orphan*/  vtballoon_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  VTBALLOON_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtballoon_softc*) ; 
 struct vtballoon_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct vtballoon_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct vtballoon_softc *sc;

	sc = FUNC4(dev);

	if (sc->vtballoon_td != NULL) {
		FUNC0(sc);
		sc->vtballoon_flags |= VTBALLOON_FLAG_DETACH;
		FUNC10(sc);
		FUNC7(sc->vtballoon_td, FUNC2(sc), 0, "vtbdth", 0);
		FUNC3(sc);

		sc->vtballoon_td = NULL;
	}

	if (FUNC5(dev)) {
		FUNC8(sc);
		FUNC9(sc);
	}

	if (sc->vtballoon_page_frames != NULL) {
		FUNC6(sc->vtballoon_page_frames, M_DEVBUF);
		sc->vtballoon_page_frames = NULL;
	}

	FUNC1(sc);

	return (0);
}