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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(int sz, const char *fmt, u_char *p, int ofs)
{
	switch (sz) {
	case 0:
	case 0x10:
		return 0;
	case 1:
	case 0x11:
		FUNC1(fmt, *p + ofs);
		return 1;
	case 2:
	case 0x12:
		FUNC1(fmt, FUNC2(p) + ofs);
		return 2;
	case 0x13:
		FUNC1(fmt, FUNC3(p) + ofs);
		return 3;
	case 3:
	case 0x14:
		FUNC1(fmt, FUNC4(p) + ofs);
		return 4;
	}
	FUNC0(1, "print_num(0x%x): Illegal arguments", sz);
/*NOTREACHED*/
}