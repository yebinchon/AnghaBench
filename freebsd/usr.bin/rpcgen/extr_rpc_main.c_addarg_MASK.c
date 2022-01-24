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
 scalar_t__ argcount ; 
 int /*<<< orphan*/ ** arglist ; 
 scalar_t__ argmax ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(const char *cp)
{
	if (argcount >= argmax)
		FUNC0();

	if (cp != NULL)
		arglist[argcount++] = FUNC1(cp);
	else
		arglist[argcount++] = NULL;
}