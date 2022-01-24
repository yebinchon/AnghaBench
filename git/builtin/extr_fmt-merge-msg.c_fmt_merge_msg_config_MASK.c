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
 scalar_t__ DEFAULT_MERGE_LOG_LEN ; 
 int FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int*) ; 
 int FUNC3 (char const*,char const*,void*) ; 
 scalar_t__ merge_log_config ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  use_branch_desc ; 

int FUNC5(const char *key, const char *value, void *cb)
{
	if (!FUNC4(key, "merge.log") || !FUNC4(key, "merge.summary")) {
		int is_bool;
		merge_log_config = FUNC2(key, value, &is_bool);
		if (!is_bool && merge_log_config < 0)
			return FUNC0("%s: negative length %s", key, value);
		if (is_bool && merge_log_config)
			merge_log_config = DEFAULT_MERGE_LOG_LEN;
	} else if (!FUNC4(key, "merge.branchdesc")) {
		use_branch_desc = FUNC1(key, value);
	} else {
		return FUNC3(key, value, cb);
	}
	return 0;
}