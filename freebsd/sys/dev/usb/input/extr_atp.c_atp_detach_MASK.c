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
struct atp_softc {int sc_state; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATP_ENABLED ; 
 int /*<<< orphan*/  ATP_N_TRANSFER ; 
 int /*<<< orphan*/  HID_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct atp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct atp_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct atp_softc *sc;

	sc = FUNC3(dev);
	FUNC1(sc, HID_MODE);

	FUNC5(&sc->sc_mutex);
	FUNC2(&sc->sc_callout);
	if (sc->sc_state & ATP_ENABLED)
		FUNC0(sc);
	FUNC6(&sc->sc_mutex);

	FUNC7(&sc->sc_fifo);

	FUNC8(sc->sc_xfer, ATP_N_TRANSFER);

	FUNC4(&sc->sc_mutex);

	return (0);
}