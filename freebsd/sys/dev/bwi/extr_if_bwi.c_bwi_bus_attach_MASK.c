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
struct bwi_regwin {int dummy; } ;
struct bwi_softc {struct bwi_regwin sc_bus_regwin; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_INTRVEC ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,struct bwi_regwin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,struct bwi_regwin*) ; 
 int FUNC3 (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ; 

__attribute__((used)) static int
FUNC4(struct bwi_softc *sc)
{
	struct bwi_regwin *bus, *old;
	int error;

	bus = &sc->sc_bus_regwin;

	error = FUNC3(sc, bus, &old);
	if (error)
		return error;

	if (!FUNC2(sc, bus))
		FUNC1(sc, bus, 0);

	/* Disable interripts */
	FUNC0(sc, BWI_INTRVEC, 0);

	return FUNC3(sc, old, NULL);
}