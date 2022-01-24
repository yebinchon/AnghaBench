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
struct string_list_item {struct string_list_item* util; } ;
struct string_list {int dummy; } ;
struct pathspec {int /*<<< orphan*/  nr; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CE_UPDATE ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_entry const*,struct pathspec const*,char*) ; 
 scalar_t__ FUNC1 (struct cache_entry const*) ; 
 char* FUNC2 (struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC5 (char*,struct pathspec const*) ; 
 struct string_list_item* FUNC6 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_index ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct string_list *list, const char *with_tree,
		      const struct pathspec *pattern)
{
	int i, ret;
	char *m;

	if (!pattern->nr)
		return 0;

	m = FUNC7(1, pattern->nr);

	if (with_tree) {
		char *max_prefix = FUNC2(pattern);
		FUNC4(&the_index, with_tree, max_prefix);
		FUNC3(max_prefix);
	}

	for (i = 0; i < active_nr; i++) {
		const struct cache_entry *ce = active_cache[i];
		struct string_list_item *item;

		if (ce->ce_flags & CE_UPDATE)
			continue;
		if (!FUNC0(&the_index, ce, pattern, m))
			continue;
		item = FUNC6(list, ce->name);
		if (FUNC1(ce))
			item->util = item; /* better a valid pointer than a fake one */
	}

	ret = FUNC5(m, pattern);
	FUNC3(m);
	return ret;
}