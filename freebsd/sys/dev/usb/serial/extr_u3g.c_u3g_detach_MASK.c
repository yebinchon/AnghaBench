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
typedef  size_t uint8_t ;
struct u3g_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct u3g_softc*) ; 
 size_t U3G_MAXPORTS ; 
 int /*<<< orphan*/  U3G_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct u3g_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct u3g_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct u3g_softc *sc = FUNC2(dev);
	uint8_t subunit;

	FUNC0("sc=%p\n", sc);

	/* NOTE: It is not dangerous to detach more ports than attached! */
	FUNC4(&sc->sc_super_ucom, sc->sc_ucom);

	for (subunit = 0; subunit != U3G_MAXPORTS; subunit++)
		FUNC5(sc->sc_xfer[subunit], U3G_N_TRANSFER);

	FUNC1(dev);

	FUNC3(sc);

	return (0);
}