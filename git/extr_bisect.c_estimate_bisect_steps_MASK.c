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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

int FUNC2(int all)
{
	int n, x, e;

	if (all < 3)
		return 0;

	n = FUNC1(all);
	e = FUNC0(n);
	x = all - e;

	return (e < 3 * x) ? n : n - 1;
}