#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {int info; int /*<<< orphan*/  makecode; } ;
typedef  TYPE_1__ keystroke ;
struct TYPE_14__ {int /*<<< orphan*/  kb_count; TYPE_3__* kb_data; } ;
typedef  TYPE_2__ keyboard_t ;
struct TYPE_15__ {scalar_t__ sc_mode; int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__ hv_kbd_sc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int IS_BREAK ; 
 int IS_E0 ; 
 int IS_E1 ; 
 int IS_UNICODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ K_RAW ; 
 int /*<<< orphan*/  NOKEY ; 
 int /*<<< orphan*/  XTKBD_EMUL0 ; 
 int /*<<< orphan*/  XTKBD_EMUL1 ; 
 int /*<<< orphan*/  XTKBD_RELEASE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static uint32_t
FUNC8(keyboard_t *kbd, int wait)
{
	uint32_t scancode = NOKEY;
	keystroke ks;
	hv_kbd_sc *sc = kbd->kb_data;
	FUNC1();

	if (!FUNC2(kbd) || !FUNC6(sc))
		return (NOKEY);
	if (sc->sc_mode == K_RAW) {
		if (FUNC4(sc, &ks)) {
			return (NOKEY);
		}
		if ((ks.info & IS_E0) || (ks.info & IS_E1)) {
			/**
			 * Emulate the generation of E0 or E1 scancode,
			 * the real scancode will be consumed next time.
			 */
			if (ks.info & IS_E0) {
				scancode = XTKBD_EMUL0;
				ks.info &= ~IS_E0;
			} else if (ks.info & IS_E1) {
				scancode = XTKBD_EMUL1;
				ks.info &= ~IS_E1;
			}
			/**
			 * Change the top item to avoid encountering
			 * E0 or E1 twice.
			 */
			FUNC5(sc, &ks);
		} else if (ks.info & IS_UNICODE) {
			/**
			 * XXX: Hyperv host send unicode to VM through
			 * 'Type clipboard text', the mapping from
			 * unicode to scancode depends on the keymap.
			 * It is so complicated that we do not plan to
			 * support it yet.
			 */
			if (bootverbose)
				FUNC3(sc->dev, "Unsupported unicode\n");
			FUNC7(sc);
			return (NOKEY);
		} else {
			scancode = ks.makecode;
			if (ks.info & IS_BREAK) {
				scancode |= XTKBD_RELEASE;
			}
			FUNC7(sc);
		}
	} else {
		if (bootverbose)
			FUNC3(sc->dev, "Unsupported mode: %d\n", sc->sc_mode);
	}
	++kbd->kb_count;
	FUNC0(kbd, "read scan: 0x%x\n", scancode);
	return scancode;
}