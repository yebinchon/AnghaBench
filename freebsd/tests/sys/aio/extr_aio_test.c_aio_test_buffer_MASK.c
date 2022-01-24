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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (long) ; 

__attribute__((used)) static int
FUNC2(char *buffer, int len, long seed)
{
	char ch;
	int i;

	FUNC1(seed);
	for (i = 0; i < len; i++) {
		ch = FUNC0() & 0xff;
		if (buffer[i] != ch)
			return (0);
	}
	return (1);
}