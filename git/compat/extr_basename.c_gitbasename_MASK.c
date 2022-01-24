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
 int /*<<< orphan*/  FUNC1 (char**) ; 

char *FUNC2 (char *path)
{
	const char *base;

	if (path)
		FUNC1(&path);

	if (!path || !*path)
		return ".";

	for (base = path; *path; path++) {
		if (!FUNC0(*path))
			continue;
		do {
			path++;
		} while (FUNC0(*path));
		if (*path)
			base = path;
		else
			while (--path != base && FUNC0(*path))
				*path = '\0';
	}
	return (char *)base;
}