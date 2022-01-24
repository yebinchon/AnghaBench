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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

char *
FUNC3(const char *str)
{
	char *ptr, *hptr;

	ptr = (char *)FUNC2(FUNC0(str)+1);

	hptr = ptr;
	while (*str != '\0')
		*ptr++ = FUNC1(*str++);

	*ptr = '\0';
	return (hptr);
}