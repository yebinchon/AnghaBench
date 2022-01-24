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
struct urtw_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 scalar_t__ URTW_GPIO ; 
 scalar_t__ URTW_GP_ENABLE ; 
 scalar_t__ URTW_RF_PINS_ENABLE ; 
 scalar_t__ URTW_RF_PINS_OUTPUT ; 
 scalar_t__ URTW_RF_PINS_SELECT ; 
 scalar_t__ FUNC0 (struct urtw_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct urtw_softc *sc)
{
	uint8_t data;
	usb_error_t error;

	FUNC2(sc, URTW_RF_PINS_SELECT + 1, 0);
	FUNC2(sc, URTW_GPIO, 0);
	error = FUNC0(sc, 0x53, &data);
	if (error)
		goto fail;
	error = FUNC3(sc, 0x53, data | (1 << 7));
	if (error)
		goto fail;
	FUNC2(sc, URTW_RF_PINS_SELECT + 1, 4);
	FUNC2(sc, URTW_GPIO, 0x20);
	FUNC2(sc, URTW_GP_ENABLE, 0);

	FUNC1(sc, URTW_RF_PINS_OUTPUT, 0x80);
	FUNC1(sc, URTW_RF_PINS_SELECT, 0x80);
	FUNC1(sc, URTW_RF_PINS_ENABLE, 0x80);

	FUNC4(&sc->sc_mtx, 500);
fail:
	return (error);
}