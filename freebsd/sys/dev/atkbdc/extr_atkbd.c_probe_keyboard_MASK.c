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
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBDC_DISABLE_KBD_PORT ; 
 int /*<<< orphan*/  KBDC_QUIRK_IGNORE_PROBE_RESULT ; 
 int KBD_KBD_CONTROL_BITS ; 
 int KB_CONF_NO_PROBE_TEST ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(KBDC kbdc, int flags)
{
	/*
	 * Don't try to print anything in this function.  The low-level 
	 * console may not have been initialized yet...
	 */
	int err;
	int c;
	int m;

	if (!FUNC6(kbdc, TRUE)) {
		/* driver error? */
		return ENXIO;
	}

	/* temporarily block data transmission from the keyboard */
	FUNC12(kbdc, KBDC_DISABLE_KBD_PORT);

	/* flush any noise in the buffer */
	FUNC2(kbdc, 100);

	/* save the current keyboard controller command byte */
	m = FUNC5(kbdc) & ~KBD_KBD_CONTROL_BITS;
	c = FUNC3(kbdc);
	if (c == -1) {
		/* CONTROLLER ERROR */
		FUNC7(kbdc, m);
		FUNC6(kbdc, FALSE);
		return ENXIO;
	}

	/* 
	 * The keyboard may have been screwed up by the boot block.
	 * We may just be able to recover from error by testing the controller
	 * and the keyboard port. The controller command byte needs to be
	 * saved before this recovery operation, as some controllers seem 
	 * to set the command byte to particular values.
	 */
	FUNC10(kbdc);
	if (!(flags & KB_CONF_NO_PROBE_TEST))
		FUNC11(kbdc);

	err = FUNC4(kbdc);

	/*
	 * Even if the keyboard doesn't seem to be present (err != 0),
	 * we shall enable the keyboard port and interrupt so that
	 * the driver will be operable when the keyboard is attached
	 * to the system later.  It is NOT recommended to hot-plug
	 * the AT keyboard, but many people do so...
	 */
	FUNC7(kbdc, m | KBD_KBD_CONTROL_BITS);
	FUNC9(kbdc, TRUE, TRUE);
#if 0
	if (err == 0) {
		kbdc_set_device_mask(kbdc, m | KBD_KBD_CONTROL_BITS);
	} else {
		/* try to restore the command byte as before */
		set_controller_command_byte(kbdc,
		    ALLOW_DISABLE_KBD(kbdc) ? 0xff : KBD_KBD_CONTROL_BITS, c);
		kbdc_set_device_mask(kbdc, m);
	}
#endif

	FUNC6(kbdc, FALSE);
	return (FUNC1(kbdc, KBDC_QUIRK_IGNORE_PROBE_RESULT) ? 0 : err);
}