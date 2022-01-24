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
typedef  int uint32_t ;
struct ps2kbd_softc {int /*<<< orphan*/  mtx; } ;
struct extended_translation {scalar_t__ keysym; int scancode; int flags; } ;

/* Variables and functions */
 int SCANCODE_E0_PREFIX ; 
 int* ascii_translations ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct extended_translation* extended_translations ; 
 int /*<<< orphan*/  FUNC1 (struct ps2kbd_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(struct ps2kbd_softc *sc,
    int down, uint32_t keysym)
{
	FUNC0(FUNC3(&sc->mtx));
	int e0_prefix, found;
	uint8_t code;
	const struct extended_translation *trans;

	found = 0;
	if (keysym < 0x80) {
		code = ascii_translations[keysym];
		e0_prefix = 0;
		found = 1;
	} else {
		for (trans = &(extended_translations[0]); trans->keysym != 0;
		    trans++) {
			if (keysym == trans->keysym) {
				code = trans->scancode;
				e0_prefix = trans->flags & SCANCODE_E0_PREFIX;
				found = 1;
				break;
			}
		}
	}

	if (!found) {
		FUNC2(stderr, "Unhandled ps2 keyboard keysym 0x%x\n", keysym);
		return;
	}

	if (e0_prefix)
		FUNC1(sc, 0xe0);
	if (!down)
		FUNC1(sc, 0xf0);
	FUNC1(sc, code);
}