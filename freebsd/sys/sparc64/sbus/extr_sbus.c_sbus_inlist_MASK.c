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
 scalar_t__ FUNC0 (char const*,char const* const) ; 

__attribute__((used)) static int
FUNC1(const char *name, const char *const *list)
{
	int i;

	if (name == NULL)
		return (0);
	for (i = 0; list[i] != NULL; i++) {
		if (FUNC0(name, list[i]) == 0)
			return (1);
	}
	return (0);
}