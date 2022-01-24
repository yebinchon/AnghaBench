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
struct wsp_softc {int sc_state; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_fifo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int WSP_ENABLED ; 
 int /*<<< orphan*/  WSP_N_TRANSFER ; 
 struct wsp_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wsp_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct wsp_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct wsp_softc *sc = FUNC0(dev);

	(void) FUNC7(sc, 0);

	FUNC2(&sc->sc_mutex);
	if (sc->sc_state & WSP_ENABLED)
		FUNC6(sc);
	FUNC3(&sc->sc_mutex);

	FUNC4(&sc->sc_fifo);

	FUNC5(sc->sc_xfer, WSP_N_TRANSFER);

	FUNC1(&sc->sc_mutex);

	return (0);
}