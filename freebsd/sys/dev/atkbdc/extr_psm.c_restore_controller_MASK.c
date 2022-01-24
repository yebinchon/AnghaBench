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
 int FALSE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(KBDC kbdc, int command_byte)
{
	FUNC0(kbdc, 10);

	if (!FUNC2(kbdc, 0xff, command_byte)) {
		FUNC1(LOG_ERR, "psm: failed to restore the keyboard controller "
		    "command byte.\n");
		FUNC0(kbdc, 10);
		return (FALSE);
	} else {
		FUNC0(kbdc, 10);
		return (TRUE);
	}
}