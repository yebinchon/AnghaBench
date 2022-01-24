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
struct wpi_softc {scalar_t__ sc_running; int /*<<< orphan*/  calib_to; int /*<<< orphan*/  scan_timeout; int /*<<< orphan*/  tx_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wpi_softc*) ; 

__attribute__((used)) static void
FUNC11(struct wpi_softc *sc)
{

	FUNC0(sc);

	if (sc->sc_running == 0)
		return;

	FUNC7(sc);
	FUNC3(sc);
	sc->sc_running = 0;
	FUNC6(sc);
	FUNC8(sc);

	FUNC4(sc);
	FUNC9(&sc->tx_timeout);
	FUNC5(sc);

	FUNC1(sc);
	FUNC9(&sc->scan_timeout);
	FUNC9(&sc->calib_to);
	FUNC2(sc);

	/* Power OFF hardware. */
	FUNC10(sc);
}