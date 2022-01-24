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
struct string_list_item {struct branch_info* util; } ;
struct branch_info {char* remote_name; int rebase; int /*<<< orphan*/  merge; } ;

/* Variables and functions */
 int INTERACTIVE_REBASE ; 
 int NORMAL_REBASE ; 
 int REBASE_MERGES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  branch_list ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct string_list_item* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 struct branch_info* FUNC10 (int,int) ; 
 char* FUNC11 (char const*,size_t) ; 
 char* FUNC12 (char const*) ; 
 char* FUNC13 (char const*,int) ; 

__attribute__((used)) static int FUNC14(const char *key, const char *value, void *cb)
{
	if (FUNC3(key, "branch.")) {
		const char *orig_key = key;
		char *name;
		struct string_list_item *item;
		struct branch_info *info;
		enum { REMOTE, MERGE, REBASE } type;
		size_t key_len;

		key += 7;
		if (FUNC8(key, ".remote", &key_len)) {
			name = FUNC11(key, key_len);
			type = REMOTE;
		} else if (FUNC8(key, ".merge", &key_len)) {
			name = FUNC11(key, key_len);
			type = MERGE;
		} else if (FUNC8(key, ".rebase", &key_len)) {
			name = FUNC11(key, key_len);
			type = REBASE;
		} else
			return 0;

		item = FUNC7(&branch_list, name);

		if (!item->util)
			item->util = FUNC10(1, sizeof(struct branch_info));
		info = item->util;
		if (type == REMOTE) {
			if (info->remote_name)
				FUNC9(FUNC0("more than one %s"), orig_key);
			info->remote_name = FUNC12(value);
		} else if (type == MERGE) {
			char *space = FUNC4(value, ' ');
			value = FUNC1(value);
			while (space) {
				char *merge;
				merge = FUNC13(value, space - value);
				FUNC6(&info->merge, merge);
				value = FUNC1(space + 1);
				space = FUNC4(value, ' ');
			}
			FUNC6(&info->merge, FUNC12(value));
		} else {
			int v = FUNC2(value);
			if (v >= 0)
				info->rebase = v;
			else if (!FUNC5(value, "preserve"))
				info->rebase = NORMAL_REBASE;
			else if (!FUNC5(value, "merges"))
				info->rebase = REBASE_MERGES;
			else if (!FUNC5(value, "interactive"))
				info->rebase = INTERACTIVE_REBASE;
		}
	}
	return 0;
}