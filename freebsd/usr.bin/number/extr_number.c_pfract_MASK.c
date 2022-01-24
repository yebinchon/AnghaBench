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
 int /*<<< orphan*/ * name3 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(int len)
{
	static char const * const pref[] = { "", "ten-", "hundred-" };

	switch(len) {
	case 1:
		(void)FUNC0("tenths.\n");
		break;
	case 2:
		(void)FUNC0("hundredths.\n");
		break;
	default:
		(void)FUNC0("%s%sths.\n", pref[len % 3], name3[len / 3]);
		break;
	}
}