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
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static const char *FUNC2(const char *path, int *olen)
{
	const char *name;
	int len;

	len = FUNC1(path);
	while (len && FUNC0(path[len - 1]))
		len--;

	for (name = path + len - 1; name > path; name--)
		if (FUNC0(*name)) {
			name++;
			break;
		}

	*olen = len;
	return name;
}