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
 char** name1 ; 
 char** name2 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int
FUNC1(char *p, int len)
{
	int val, rval;

	rval = 0;
	switch (len) {
	case 3:
		if (*p != '0') {
			rval = 1;
			(void)FUNC0("%s hundred", name1[*p - '0']);
		}
		++p;
		/* FALLTHROUGH */
	case 2:
		val = (p[1] - '0') + (p[0] - '0') * 10;
		if (val) {
			if (rval)
				(void)FUNC0(" ");
			if (val < 20)
				(void)FUNC0("%s", name1[val]);
			else {
				(void)FUNC0("%s", name2[val / 10]);
				if (val % 10)
					(void)FUNC0("-%s", name1[val % 10]);
			}
			rval = 1;
		}
		break;
	case 1:
		if (*p != '0') {
			rval = 1;
			(void)FUNC0("%s", name1[*p - '0']);
		}
	}
	return (rval);
}