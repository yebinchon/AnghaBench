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

__attribute__((used)) static int
FUNC0(int year)
{
	int i;

	i = (year % 4) ? 0 : 1;
	i &= (year % 100) ? 1 : 0;
	i |= (year % 400) ? 0 : 1;

	return i;
}