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
 int /*<<< orphan*/ * dot ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ inithdr ; 
 int /*<<< orphan*/ * message ; 
 scalar_t__ msgCount ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

void
FUNC3(void)
{
	int vec[2], mdot;

	mdot = FUNC1(0);
	vec[0] = mdot;
	vec[1] = 0;
	dot = &message[mdot - 1];
	if (msgCount > 0 && FUNC2("noheader") == NULL) {
		inithdr++;
		FUNC0(vec);
		inithdr = 0;
	}
}