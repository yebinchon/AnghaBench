#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct ugensa_softc {size_t sc_nports; TYPE_1__* sc_sub; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  UGENSA_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ugensa_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ugensa_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ugensa_softc *sc = FUNC1(dev);
	uint8_t x;

	FUNC2(&sc->sc_super_ucom, sc->sc_ucom);

	for (x = 0; x < sc->sc_nports; x++) {
		FUNC4(sc->sc_sub[x].sc_xfer, UGENSA_N_TRANSFER);
	}

	FUNC0(dev);

	FUNC3(sc);

	return (0);
}