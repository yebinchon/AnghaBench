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
struct pathspec {scalar_t__ nr; } ;
struct module_list {scalar_t__ nr; struct cache_entry const** entries; int /*<<< orphan*/  alloc; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_entry const**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATHSPEC_PREFER_FULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pathspec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const**) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (char*,struct pathspec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_index ; 
 char* FUNC11 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv,
			       const char *prefix,
			       struct pathspec *pathspec,
			       struct module_list *list)
{
	int i, result = 0;
	char *ps_matched = NULL;
	FUNC7(pathspec, 0,
		       PATHSPEC_PREFER_FULL,
		       prefix, argv);

	if (pathspec->nr)
		ps_matched = FUNC11(pathspec->nr, 1);

	if (FUNC8() < 0)
		FUNC4(FUNC2("index file corrupt"));

	for (i = 0; i < active_nr; i++) {
		const struct cache_entry *ce = active_cache[i];

		if (!FUNC6(&the_index, pathspec, ce->name, FUNC3(ce),
				    0, ps_matched, 1) ||
		    !FUNC1(ce->ce_mode))
			continue;

		FUNC0(list->entries, list->nr + 1, list->alloc);
		list->entries[list->nr++] = ce;
		while (i + 1 < active_nr &&
		       !FUNC10(ce->name, active_cache[i + 1]->name))
			/*
			 * Skip entries with the same name in different stages
			 * to make sure an entry is returned only once.
			 */
			i++;
	}

	if (ps_matched && FUNC9(ps_matched, pathspec))
		result = -1;

	FUNC5(ps_matched);

	return result;
}