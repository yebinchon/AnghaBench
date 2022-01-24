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
 int /*<<< orphan*/  KBDC_FORCE_AUX_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(KBDC p, int enabled)
{
	int command, version;

	if (FUNC1(p, KBDC_FORCE_AUX_OUTPUT) == 0 ||
	    FUNC2(p, 0xF0) == 0 ||
	    FUNC0(p) != 0xF0)
		return (-1);

	if (FUNC1(p, KBDC_FORCE_AUX_OUTPUT) == 0 ||
	    FUNC2(p, 0x56) == 0 ||
	    FUNC0(p) != 0x56)
		return (-1);

	command = enabled ? 0xa4 : 0xa5;
	if (FUNC1(p, KBDC_FORCE_AUX_OUTPUT) == 0 ||
	    FUNC2(p, command) == 0 ||
	    (version = FUNC0(p)) == command)
		return (-1);

	return (version);
}