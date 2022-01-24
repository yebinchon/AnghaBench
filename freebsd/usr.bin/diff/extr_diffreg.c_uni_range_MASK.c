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
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

__attribute__((used)) static void
FUNC1(int a, int b)
{
	if (a < b)
		FUNC0("%d,%d", a, b - a + 1);
	else if (a == b)
		FUNC0("%d", b);
	else
		FUNC0("%d,0", b);
}