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
struct agp_apple_softc {int needs_2x_reset; int u3; int aperture; scalar_t__ gatt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  UNIN_AGP_BASE_ADDR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct agp_apple_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct agp_apple_softc *sc = FUNC6(dev);
	int error;

	/* Record quirks */
	sc->needs_2x_reset = 0;
	sc->u3 = 0;
	switch (FUNC7(dev)) {
	case 0x0020106b:
	case 0x0027106b:
		sc->needs_2x_reset = 1;
		break;
	case 0x004b106b:
	case 0x0058106b:
	case 0x0059106b:
		sc->u3 = 1;
		break;
	}

	/* Set the aperture bus address base (must be 0) */
	FUNC8(dev, UNIN_AGP_BASE_ADDR, 0, 4);
	FUNC5(dev, -1);

	error = FUNC3(dev);
	if (error)
		return (error);

	sc->aperture = 256*1024*1024;

	for (sc->aperture = 256*1024*1024; sc->aperture >= 4*1024*1024;
	    sc->aperture /= 2) {
		sc->gatt = FUNC2(dev);
		if (sc->gatt)
			break;
	}
	if (sc->aperture < 4*1024*1024) {
		FUNC4(dev);
		return ENOMEM;
	}

	/* Install the gatt. */
	FUNC1(dev, sc->aperture);

	/* XXX: U3 scratch page? */
	
	/* Enable the aperture and TLB. */
	FUNC0(dev);

	return (0);
}