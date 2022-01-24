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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  bwstring_iterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

int
FUNC2(bwstring_iterator iter1, bwstring_iterator iter2, size_t len)
{
	wchar_t c1, c2;
	size_t i = 0;

	for (i = 0; i < len; ++i) {
		c1 = FUNC0(iter1);
		c2 = FUNC0(iter2);
		if (c1 != c2)
			return (c1 - c2);
		iter1 = FUNC1(iter1, 1);
		iter2 = FUNC1(iter2, 1);
	}

	return (0);
}