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
 scalar_t__ decimal ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (unsigned long) ; 

__attribute__((used)) static void
FUNC2(unsigned long val)
{
	const char *str;

	str = FUNC1(val);
	if (str != NULL)
		FUNC0("%s", str);
	else if (decimal)
		FUNC0("%lu", val);
	else
		FUNC0("%#lx", val);
}