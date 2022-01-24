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
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KBDC_ENABLE_KBD ; 
 scalar_t__ KBD_ACK ; 
 int KBD_AUX_CONTROL_BITS ; 
 int KBD_DISABLE_AUX_INT ; 
 int KBD_DISABLE_AUX_PORT ; 
 int KBD_DISABLE_KBD_INT ; 
 int KBD_DISABLE_KBD_PORT ; 
 int KBD_KBD_CONTROL_BITS ; 
 int /*<<< orphan*/  TRUE ; 
 int c ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(KBDC kbdc, int command, int data)
{
	int s;

	/* prevent the timeout routine from polling the keyboard */
	if (!FUNC2(kbdc, TRUE)) 
		return EBUSY;

	/* disable the keyboard and mouse interrupt */
	s = FUNC6();
#if 0
	c = get_controller_command_byte(kbdc);
	if ((c == -1) 
	    || !set_controller_command_byte(kbdc, 
		kbdc_get_device_mask(kbdc),
		KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT
		| KBD_DISABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
		/* CONTROLLER ERROR */
		kbdc_lock(kbdc, FALSE);
		splx(s);
		return EIO;
	}
	/* 
	 * Now that the keyboard controller is told not to generate 
	 * the keyboard and mouse interrupts, call `splx()' to allow 
	 * the other tty interrupts. The clock interrupt may also occur, 
	 * but the timeout routine (`scrn_timer()') will be blocked 
	 * by the lock flag set via `kbdc_lock()'
	 */
	splx(s);
#endif
	if (FUNC4(kbdc, command, data) != KBD_ACK)
		FUNC3(kbdc, KBDC_ENABLE_KBD);
#if 0
	/* restore the interrupts */
	if (!set_controller_command_byte(kbdc, kbdc_get_device_mask(kbdc),
	    c & (KBD_KBD_CONTROL_BITS | KBD_AUX_CONTROL_BITS))) { 
		/* CONTROLLER ERROR */
	}
#else
	FUNC7(s);
#endif
	FUNC2(kbdc, FALSE);

	return 0;
}