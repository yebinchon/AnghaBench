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
 int FUNC0 (char**,char*,char const*,int) ; 

__attribute__((used)) static char *
FUNC1(const char *file, int version)
{
	char	*backup_name;

	if (FUNC0(&backup_name, "%s.~%d~", file, version) == -1)
		return NULL;
	return backup_name;
}