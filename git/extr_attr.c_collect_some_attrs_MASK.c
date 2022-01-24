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
struct index_state {int dummy; } ;
struct attr_check {int all_attrs_nr; int /*<<< orphan*/  all_attrs; int /*<<< orphan*/  stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct attr_check*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_attr_hashmap ; 
 int /*<<< orphan*/  FUNC3 (struct index_state const*,char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const struct index_state *istate,
			       const char *path,
			       struct attr_check *check)
{
	int pathlen, rem, dirlen;
	const char *cp, *last_slash = NULL;
	int basename_offset;

	for (cp = path; *cp; cp++) {
		if (*cp == '/' && cp[1])
			last_slash = cp;
	}
	pathlen = cp - path;
	if (last_slash) {
		basename_offset = last_slash + 1 - path;
		dirlen = last_slash - path;
	} else {
		basename_offset = 0;
		dirlen = 0;
	}

	FUNC3(istate, path, dirlen, &check->stack);
	FUNC0(&g_attr_hashmap, check);
	FUNC1(check->all_attrs, check->stack);

	rem = check->all_attrs_nr;
	FUNC2(path, pathlen, basename_offset, check->stack, check->all_attrs, rem);
}