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
struct vtscsi_softc {int /*<<< orphan*/ * vtscsi_sglist; int /*<<< orphan*/  vtscsi_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VTSCSI_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtscsi_softc*) ; 
 struct vtscsi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct vtscsi_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct vtscsi_softc *sc;

	sc = FUNC3(dev);

	FUNC0(sc);
	sc->vtscsi_flags |= VTSCSI_FLAG_DETACH;
	if (FUNC4(dev))
		FUNC10(sc);
	FUNC2(sc);

	FUNC6(sc);
	FUNC7(sc);

	FUNC8(sc);
	FUNC9(sc);

	if (sc->vtscsi_sglist != NULL) {
		FUNC5(sc->vtscsi_sglist);
		sc->vtscsi_sglist = NULL;
	}

	FUNC1(sc);

	return (0);
}