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
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(char **buf)
{
	char *walk = *buf;
	char *last;

	while (FUNC0(*walk))
		walk++;
	if (*walk != '\0') {
		last = walk + FUNC1(walk) - 1;
		while (last > walk && FUNC0(*last))
			last--;
		*(last+1) = 0;
	}

	*buf = walk;
}