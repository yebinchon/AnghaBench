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
struct group {int dummy; } ;
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 struct group* FUNC0 (scalar_t__) ; 
 struct group* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct group *
FUNC3(char *name, intmax_t id, bool fatal)
{
	struct group *grp;

	if (id < 0 && name == NULL)
		FUNC2(EX_DATAERR, "groupname or id required");
	grp = (name != NULL) ? FUNC1(name) : FUNC0(id);
	if (grp == NULL) {
		if (!fatal)
			return (NULL);
		if (name == NULL)
			FUNC2(EX_DATAERR, "unknown gid `%ju'", id);
		FUNC2(EX_DATAERR, "unknown group `%s'", name);
	}
	return (grp);
}