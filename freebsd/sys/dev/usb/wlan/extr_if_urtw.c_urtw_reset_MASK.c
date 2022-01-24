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
struct urtw_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_8225_ANAPARAM2_ON ; 
 int /*<<< orphan*/  URTW_8225_ANAPARAM_ON ; 
 int /*<<< orphan*/  URTW_CMD ; 
 int URTW_CMD_RST ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct urtw_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC9(struct urtw_softc *sc)
{
	uint8_t data;
	usb_error_t error;

	error = FUNC1(sc, URTW_8225_ANAPARAM_ON);
	if (error)
		goto fail;
	error = FUNC2(sc, URTW_8225_ANAPARAM2_ON);
	if (error)
		goto fail;

	error = FUNC3(sc);
	if (error)
		goto fail;
	FUNC8(&sc->sc_mtx, 100);

	error = FUNC7(sc, 0x18, 0x10);
	if (error != 0)
		goto fail;
	error = FUNC7(sc, 0x18, 0x11);
	if (error != 0)
		goto fail;
	error = FUNC7(sc, 0x18, 0x00);
	if (error != 0)
		goto fail;
	FUNC8(&sc->sc_mtx, 100);

	FUNC4(sc, URTW_CMD, &data);
	data = (data & 0x2) | URTW_CMD_RST;
	FUNC6(sc, URTW_CMD, data);
	FUNC8(&sc->sc_mtx, 100);

	FUNC4(sc, URTW_CMD, &data);
	if (data & URTW_CMD_RST) {
		FUNC0(sc->sc_dev, "reset timeout\n");
		goto fail;
	}

	error = FUNC5(sc, URTW_EPROM_CMD_LOAD);
	if (error)
		goto fail;
	FUNC8(&sc->sc_mtx, 100);

	error = FUNC1(sc, URTW_8225_ANAPARAM_ON);
	if (error)
		goto fail;
	error = FUNC2(sc, URTW_8225_ANAPARAM2_ON);
	if (error)
		goto fail;
fail:
	return (error);
}