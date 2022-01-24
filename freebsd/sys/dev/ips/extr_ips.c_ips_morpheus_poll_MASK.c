#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ timeout; int /*<<< orphan*/  sc; } ;
typedef  TYPE_1__ ips_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ time_second ; 

void FUNC2(ips_command_t *command)
{
	uint32_t ts;

	/*
	 * Locks are not used here because this is only called during
	 * crashdumps.
	 */
	ts = time_second + command->timeout;
	while ((command->timeout != 0)
	 && (FUNC1(command->sc) == 0)
	 && (ts > time_second))
		FUNC0(1000);
}