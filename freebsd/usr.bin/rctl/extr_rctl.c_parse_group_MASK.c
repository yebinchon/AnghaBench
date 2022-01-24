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
struct group {int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 struct group* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC5(const char *s, id_t *gidp, const char *unexpanded_rule)
{
	char *end;
	struct group *grp;

	grp = FUNC0(s);
	if (grp != NULL) {
		*gidp = grp->gr_gid;
		return (0);
	}

	if (!FUNC1(s[0])) {
		FUNC4("malformed rule '%s': unknown group '%s'",
		    unexpanded_rule, s);
		return (1);
	}

	*gidp = FUNC3(s, &end);
	if ((size_t)(end - s) != FUNC2(s)) {
		FUNC4("malformed rule '%s': trailing characters "
		    "after numerical id", unexpanded_rule);
		return (1);
	}

	return (0);
}