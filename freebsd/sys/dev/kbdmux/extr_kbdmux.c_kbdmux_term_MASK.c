#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int ks_flags; struct TYPE_13__* kb_fkeytab; struct TYPE_13__* kb_accentmap; struct TYPE_13__* kb_keymap; int /*<<< orphan*/  ks_evdev; int /*<<< orphan*/ * kbd; int /*<<< orphan*/  ks_kbds; int /*<<< orphan*/  ks_timo; scalar_t__ kb_data; } ;
typedef  TYPE_1__ keyboard_t ;
typedef  TYPE_1__ kbdmux_state_t ;
typedef  TYPE_1__ kbdmux_kbd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  M_KBDMUX ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TASK ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  ks_task ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static int
FUNC12(keyboard_t *kbd)
{
	kbdmux_state_t	*state = (kbdmux_state_t *) kbd->kb_data;
	kbdmux_kbd_t	*k;

	FUNC0(state);

	/* kill callout */
	FUNC7(&state->ks_timo);

	/* wait for interrupt task */
	while (state->ks_flags & TASK)
		FUNC2(state, ks_task, "kbdmuxc", 0);

	/* release all keyboards from the mux */
	while ((k = FUNC4(&state->ks_kbds)) != NULL) {
		FUNC10(k->kbd, &k->kbd);
		FUNC5(&state->ks_kbds, next);

		k->kbd = NULL;

		FUNC9(k, M_KBDMUX);
	}

	FUNC3(state);

	FUNC11(kbd);

#ifdef EVDEV_SUPPORT
	evdev_free(state->ks_evdev);
#endif

	FUNC1(state);
	FUNC6(state, sizeof(*state));
	FUNC9(state, M_KBDMUX);

	FUNC9(kbd->kb_keymap, M_KBDMUX);
	FUNC9(kbd->kb_accentmap, M_KBDMUX);
	FUNC9(kbd->kb_fkeytab, M_KBDMUX);
	FUNC9(kbd, M_KBDMUX);

	return (0);
}