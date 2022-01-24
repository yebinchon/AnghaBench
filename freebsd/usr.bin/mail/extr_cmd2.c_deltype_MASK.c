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
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/ * dot ; 
 int /*<<< orphan*/ * message ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int*) ; 

int
FUNC4(void *v)
{
	int *msgvec = v;
	int list[2];
	int lastdot;

	lastdot = dot - &message[0] + 1;
	if (FUNC0(msgvec) >= 0) {
		list[0] = dot - &message[0] + 1;
		if (list[0] > lastdot) {
			FUNC2(dot);
			list[1] = 0;
			return (FUNC3(list));
		}
		FUNC1("At EOF\n");
	} else
		FUNC1("No more messages\n");
	return (0);
}