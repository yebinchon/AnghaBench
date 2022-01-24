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
typedef  int /*<<< orphan*/  port_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCR_RSTALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (port_t port)
{
	int count;

	/* Wait up to 10 msec for revision code to appear after reset. */
	for (count=0; count<20000; ++count)
		if (FUNC2(FUNC0(port)) != 0)
			break;

	FUNC1 (port, CCR_RSTALL);

	/* Firmware revision code should clear immediately. */
	/* Wait up to 10 msec for revision code to appear again. */
	for (count=0; count<20000; ++count)
		if (FUNC2(FUNC0(port)) != 0)
			return (1);

	/* Reset failed. */
	return (0);
}