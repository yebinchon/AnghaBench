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

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  V_counter_zone ; 
 unsigned int* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned int *
FUNC1(void)
{
	unsigned int *counter;
	counter = FUNC0(V_counter_zone, M_NOWAIT);
	if (counter)
		*counter = 1;
	return (counter);
}