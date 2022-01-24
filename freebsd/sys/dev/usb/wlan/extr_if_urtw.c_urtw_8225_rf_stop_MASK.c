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
struct urtw_softc {int sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_8187B_8225_ANAPARAM2_OFF ; 
 int /*<<< orphan*/  URTW_8187B_8225_ANAPARAM3_OFF ; 
 int /*<<< orphan*/  URTW_8187B_8225_ANAPARAM_OFF ; 
 int /*<<< orphan*/  URTW_8225_ANAPARAM2_OFF ; 
 int /*<<< orphan*/  URTW_8225_ANAPARAM_OFF ; 
 int /*<<< orphan*/  URTW_ANAPARAM ; 
 int /*<<< orphan*/  URTW_ANAPARAM2 ; 
 int /*<<< orphan*/  URTW_ANAPARAM3 ; 
 int /*<<< orphan*/  URTW_CONFIG3 ; 
 int URTW_CONFIG3_ANAPARAM_WRITE ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_NORMAL ; 
 int URTW_RTL8187B ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct urtw_softc *sc)
{
	uint8_t data;
	usb_error_t error;

	FUNC0(sc, 0x4, 0x1f);

	error = FUNC2(sc, URTW_EPROM_CMD_CONFIG);
	if (error)
		goto fail;

	FUNC1(sc, URTW_CONFIG3, &data);
	FUNC4(sc, URTW_CONFIG3, data | URTW_CONFIG3_ANAPARAM_WRITE);
	if (sc->sc_flags & URTW_RTL8187B) {
		FUNC3(sc, URTW_ANAPARAM2,
		    URTW_8187B_8225_ANAPARAM2_OFF);
		FUNC3(sc, URTW_ANAPARAM, URTW_8187B_8225_ANAPARAM_OFF);
		FUNC3(sc, URTW_ANAPARAM3,
		    URTW_8187B_8225_ANAPARAM3_OFF);
	} else {
		FUNC3(sc, URTW_ANAPARAM2, URTW_8225_ANAPARAM2_OFF);
		FUNC3(sc, URTW_ANAPARAM, URTW_8225_ANAPARAM_OFF);
	}

	FUNC4(sc, URTW_CONFIG3, data & ~URTW_CONFIG3_ANAPARAM_WRITE);
	error = FUNC2(sc, URTW_EPROM_CMD_NORMAL);
	if (error)
		goto fail;

fail:
	return (error);
}