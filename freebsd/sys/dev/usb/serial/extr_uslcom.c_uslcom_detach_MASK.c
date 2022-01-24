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
struct uslcom_softc {int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct uslcom_softc*) ; 
 int /*<<< orphan*/  USLCOM_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uslcom_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uslcom_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct uslcom_softc *sc = FUNC2(dev);

	FUNC0("sc=%p\n", sc);

	FUNC3(&sc->sc_super_ucom, &sc->sc_ucom);
	FUNC5(sc->sc_xfer, USLCOM_N_TRANSFER);

	FUNC4(&sc->sc_watchdog);

	FUNC1(dev);

	FUNC6(sc);

	return (0);
}