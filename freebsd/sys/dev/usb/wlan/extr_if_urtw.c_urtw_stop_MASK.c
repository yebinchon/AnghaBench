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
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
struct urtw_softc {scalar_t__ (* sc_rf_stop ) (struct urtw_softc*) ;int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_led_ch; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*) ; 
 int /*<<< orphan*/  URTW_CMD ; 
 int URTW_CMD_RX_ENABLE ; 
 int URTW_CMD_TX_ENABLE ; 
 int /*<<< orphan*/  URTW_CONFIG4 ; 
 int URTW_CONFIG4_VCOOFF ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  URTW_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct urtw_softc*) ; 
 scalar_t__ FUNC5 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct urtw_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(struct urtw_softc *sc)
{
	uint8_t data8;
	usb_error_t error;

	FUNC0(sc);

	sc->sc_flags &= ~URTW_RUNNING;

	error = FUNC5(sc);
	if (error)
		goto fail;
	FUNC6(sc, URTW_CMD, &data8);
	data8 &= ~(URTW_CMD_RX_ENABLE | URTW_CMD_TX_ENABLE);
	FUNC8(sc, URTW_CMD, data8);

	error = sc->sc_rf_stop(sc);
	if (error != 0)
		goto fail;

	error = FUNC7(sc, URTW_EPROM_CMD_CONFIG);
	if (error)
		goto fail;
	FUNC6(sc, URTW_CONFIG4, &data8);
	FUNC8(sc, URTW_CONFIG4, data8 | URTW_CONFIG4_VCOOFF);
	error = FUNC7(sc, URTW_EPROM_CMD_NORMAL);
	if (error)
		goto fail;
fail:
	if (error)
		FUNC2(sc->sc_dev, "failed to stop (%s)\n",
		    FUNC10(error));

	FUNC9(&sc->sc_led_ch);
	FUNC1(&sc->sc_watchdog_ch);

	FUNC4(sc);
}