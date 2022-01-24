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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(KBDC kbdc)
{
	/* discard anything left in the output buffer */
	FUNC1(kbdc, 10);

#if 0
	/*
	 * NOTE: KBDC_RESET_KBD may not restore the communication between the
	 * keyboard and the controller.
	 */
	reset_kbd(kbdc);
#else
	/*
	 * NOTE: somehow diagnostic and keyboard port test commands bring the
	 * keyboard back.
	 */
	if (!FUNC4(kbdc))
		FUNC2(LOG_ERR, "psm: keyboard controller failed.\n");
	/* if there isn't a keyboard in the system, the following error is OK */
	if (FUNC5(kbdc) != 0)
		FUNC0(1, (LOG_ERR, "psm: keyboard port failed.\n"));
#endif
}