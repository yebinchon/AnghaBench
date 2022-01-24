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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int
FUNC2(char **argv)
{
	int times;

	if (argv[0] == 0)
		times = 1;
	else
		times = (FUNC0(argv[0]) + 511) / 512;
	FUNC1(times);
	return (0);
}