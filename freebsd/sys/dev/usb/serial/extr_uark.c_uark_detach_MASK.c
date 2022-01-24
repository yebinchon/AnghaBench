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
struct uark_softc {int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  UARK_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct uark_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uark_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct uark_softc *sc = FUNC1(dev);

	FUNC3(&sc->sc_super_ucom, &sc->sc_ucom);
	FUNC4(sc->sc_xfer, UARK_N_TRANSFER);

	FUNC0(dev);

	FUNC2(sc);

	return (0);
}