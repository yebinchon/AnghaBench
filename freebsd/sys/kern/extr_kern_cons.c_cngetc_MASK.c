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
 scalar_t__ cn_mute ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(void)
{
	int c;

	if (cn_mute)
		return (-1);
	while ((c = FUNC0()) == -1)
		FUNC1();
	if (c == '\r')
		c = '\n';		/* console input is always ICRNL */
	return (c);
}