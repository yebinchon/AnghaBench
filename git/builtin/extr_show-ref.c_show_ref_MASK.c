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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  found_match ; 
 scalar_t__ heads_only ; 
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 char** pattern ; 
 scalar_t__ show_head ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct object_id const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ tags_only ; 

__attribute__((used)) static int FUNC5(const char *refname, const struct object_id *oid,
		    int flag, void *cbdata)
{
	if (show_head && !FUNC3(refname, "HEAD"))
		goto match;

	if (tags_only || heads_only) {
		int match;

		match = heads_only && FUNC2(refname, "refs/heads/");
		match |= tags_only && FUNC2(refname, "refs/tags/");
		if (!match)
			return 0;
	}
	if (pattern) {
		int reflen = FUNC4(refname);
		const char **p = pattern, *m;
		while ((m = *p++) != NULL) {
			int len = FUNC4(m);
			if (len > reflen)
				continue;
			if (FUNC0(m, refname + reflen - len, len))
				continue;
			if (len == reflen)
				goto match;
			if (refname[reflen - len - 1] == '/')
				goto match;
		}
		return 0;
	}

match:
	found_match++;

	FUNC1(refname, oid);

	return 0;
}