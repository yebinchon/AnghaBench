#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {void* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;
struct TYPE_18__ {int /*<<< orphan*/  (* enable ) (TYPE_1__*) ;} ;
typedef  TYPE_2__ keyboard_switch_t ;
struct TYPE_19__ {int /*<<< orphan*/  sc_mode; TYPE_1__ sc_kbd; } ;
typedef  TYPE_3__ hv_kbd_sc ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  HVKBD_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  KB_OTHER ; 
 int /*<<< orphan*/  K_RAW ; 
 int /*<<< orphan*/  accent_map ; 
 scalar_t__ bootverbose ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fkey_tab ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_map ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

int
FUNC16(device_t dev)
{
	hv_kbd_sc *sc = FUNC4(dev);
	int unit = FUNC5(dev);
	keyboard_t *kbd = &sc->sc_kbd;
	keyboard_switch_t *sw;
	sw = FUNC10(HVKBD_DRIVER_NAME);
	if (sw == NULL) {
		return (ENXIO);
	}

	FUNC11(kbd, HVKBD_DRIVER_NAME, KB_OTHER, unit, 0, 0, 0);
	kbd->kb_data = (void *)sc;
	FUNC13(kbd, &key_map, &accent_map, fkey_tab, FUNC14(fkey_tab));
	FUNC1(kbd);
	FUNC8(kbd);
	FUNC3(kbd);
	FUNC2(kbd);
	sc->sc_mode = K_RAW;
	(*sw->enable)(kbd);

	if (FUNC12(kbd) < 0) {
		goto detach;
	}
	FUNC0(kbd);
#ifdef KBD_INSTALL_CDEV
        if (kbd_attach(kbd)) {
		goto detach;
	}
#endif
	if (bootverbose) {
		FUNC6(kbd, bootverbose);
	}
	return (0);
detach:
	FUNC7(dev);
	return (ENXIO);
}