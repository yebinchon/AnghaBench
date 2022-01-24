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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cold ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(int usec)
{
	int ticks;

	if (usec == 0)
		return;
	ticks = (usec * hz + 999999) / 1000000;

	if (cold || ticks < 2)
		FUNC0(usec);
	else
		FUNC1("REGULATOR", ticks);
}