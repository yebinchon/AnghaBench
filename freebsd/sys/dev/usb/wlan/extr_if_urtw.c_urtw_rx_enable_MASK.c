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
struct urtw_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t URTW_8187B_BULK_RX ; 
 size_t URTW_8187L_BULK_RX ; 
 int /*<<< orphan*/  URTW_CMD ; 
 int URTW_CMD_RX_ENABLE ; 
 int URTW_RTL8187B ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static usb_error_t
FUNC4(struct urtw_softc *sc)
{
	uint8_t data;
	usb_error_t error;

	FUNC3((sc->sc_flags & URTW_RTL8187B) ?
	    sc->sc_xfer[URTW_8187B_BULK_RX] : sc->sc_xfer[URTW_8187L_BULK_RX]);

	error = FUNC1(sc);
	if (error != 0)
		goto fail;

	if ((sc->sc_flags & URTW_RTL8187B) == 0) {
		FUNC0(sc, URTW_CMD, &data);
		FUNC2(sc, URTW_CMD, data | URTW_CMD_RX_ENABLE);
	}
fail:
	return (error);
}