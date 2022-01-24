#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int command_byte; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  KBDC_DISABLE_KBD_PORT ; 
 int /*<<< orphan*/  KBDC_SET_COMMAND_BYTE ; 
 int KBD_DISABLE_KBD_PORT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5(KBDC p, int mask, int command)
{
    if (FUNC0(p) == -1)
	return FALSE;

    command = (FUNC1(p)->command_byte & ~mask) | (command & mask);
    if (command & KBD_DISABLE_KBD_PORT) {
	if (!FUNC3(p, KBDC_DISABLE_KBD_PORT))
	    return FALSE;
    }
    if (!FUNC3(p, KBDC_SET_COMMAND_BYTE))
	return FALSE;
    if (!FUNC4(p, command))
	return FALSE;
    FUNC1(p)->command_byte = command;

    if (verbose)
        FUNC2(LOG_DEBUG, "kbdc: new command byte:%04x (set_controller...)\n",
	    command);

    return TRUE;
}