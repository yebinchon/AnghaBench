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
struct TYPE_2__ {int command_byte; int /*<<< orphan*/  kbd; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  KBDC_GET_COMMAND_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(KBDC p)
{
    if (FUNC1(p)->command_byte != -1)
	return FUNC1(p)->command_byte;
    if (!FUNC3(p, KBDC_GET_COMMAND_BYTE))
	return -1;
    FUNC0(&FUNC1(p)->kbd);
    FUNC1(p)->command_byte = FUNC2(p);
    return FUNC1(p)->command_byte;
}