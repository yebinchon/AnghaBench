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
typedef  int uint8_t ;
struct ps2kbd_softc {int curcmd; int enabled; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int const PS2KC_ACK ; 
 int const PS2KC_BAT_SUCCESS ; 
#define  PS2KC_DISABLE 135 
#define  PS2KC_ECHO 134 
#define  PS2KC_ENABLE 133 
#define  PS2KC_RESET_DEV 132 
#define  PS2KC_SEND_DEV_ID 131 
#define  PS2KC_SET_LEDS 130 
#define  PS2KC_SET_SCANCODE_SET 129 
#define  PS2KC_SET_TYPEMATIC 128 
 int /*<<< orphan*/  FUNC0 (struct ps2kbd_softc*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct ps2kbd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC5(struct ps2kbd_softc *sc, uint8_t val)
{
	FUNC3(&sc->mtx);
	if (sc->curcmd) {
		switch (sc->curcmd) {
		case PS2KC_SET_TYPEMATIC:
			FUNC0(sc, PS2KC_ACK);
			break;
		case PS2KC_SET_SCANCODE_SET:
			FUNC0(sc, PS2KC_ACK);
			break;
		case PS2KC_SET_LEDS:
			FUNC0(sc, PS2KC_ACK);
			break;
		default:
			FUNC2(stderr, "Unhandled ps2 keyboard current "
			    "command byte 0x%02x\n", val);
			break;
		}
		sc->curcmd = 0;
	} else {
		switch (val) {
		case 0x00:
			FUNC0(sc, PS2KC_ACK);
			break;
		case PS2KC_RESET_DEV:
			FUNC1(sc);
			FUNC0(sc, PS2KC_ACK);
			FUNC0(sc, PS2KC_BAT_SUCCESS);
			break;
		case PS2KC_DISABLE:
			sc->enabled = false;
			FUNC0(sc, PS2KC_ACK);
			break;
		case PS2KC_ENABLE:
			sc->enabled = true;
			FUNC1(sc);
			FUNC0(sc, PS2KC_ACK);
			break;
		case PS2KC_SET_TYPEMATIC:
			sc->curcmd = val;
			FUNC0(sc, PS2KC_ACK);
			break;
		case PS2KC_SEND_DEV_ID:
			FUNC0(sc, PS2KC_ACK);
			FUNC0(sc, 0xab);
			FUNC0(sc, 0x83);
			break;
		case PS2KC_SET_SCANCODE_SET:
			sc->curcmd = val;
			FUNC0(sc, PS2KC_ACK);
			break;
		case PS2KC_ECHO:
			FUNC0(sc, PS2KC_ECHO);
			break;
		case PS2KC_SET_LEDS:
			sc->curcmd = val;
			FUNC0(sc, PS2KC_ACK);
			break;
		default:
			FUNC2(stderr, "Unhandled ps2 keyboard command "
			    "0x%02x\n", val);
			break;
		}
	}
	FUNC4(&sc->mtx);
}