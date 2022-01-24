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
struct branch {int /*<<< orphan*/  name; } ;
typedef  enum rebase_type { ____Placeholder_rebase_type } rebase_type ;

/* Variables and functions */
 int REBASE_FALSE ; 
 struct branch* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const**) ; 
 int FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum rebase_type FUNC5(void)
{
	struct branch *curr_branch = FUNC0("HEAD");
	const char *value;

	if (curr_branch) {
		char *key = FUNC4("branch.%s.rebase", curr_branch->name);

		if (!FUNC2(key, &value)) {
			enum rebase_type ret = FUNC3(key, value, 1);
			FUNC1(key);
			return ret;
		}

		FUNC1(key);
	}

	if (!FUNC2("pull.rebase", &value))
		return FUNC3("pull.rebase", value, 1);

	return REBASE_FALSE;
}