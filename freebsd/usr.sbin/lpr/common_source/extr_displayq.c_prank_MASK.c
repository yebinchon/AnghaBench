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
typedef  int /*<<< orphan*/  rline ;

/* Variables and functions */
 int col ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,...) ; 
 scalar_t__ FUNC2 (char*) ; 

void
FUNC3(int n)
{
	char rline[100];
	static const char *r[] = {
		"th", "st", "nd", "rd", "th", "th", "th", "th", "th", "th"
	};

	if (n == 0) {
		FUNC0("active");
		col += 6;
		return;
	}
	if ((n/10)%10 == 1)
		(void)FUNC1(rline, sizeof(rline), "%dth", n);
	else
		(void)FUNC1(rline, sizeof(rline), "%d%s", n, r[n%10]);
	col += FUNC2(rline);
	FUNC0("%s", rline);
}