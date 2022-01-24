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
struct gcov_node {int num_loaded; struct gcov_info** loaded_info; struct gcov_info* unloaded_info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  M_GCOV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_info**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct gcov_info*,struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct gcov_info** FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gcov_info**,struct gcov_info**,int) ; 

__attribute__((used)) static void
FUNC7(struct gcov_node *node, struct gcov_info *info)
{
	struct gcov_info **loaded_info;
	int num = node->num_loaded;

	/*
	 * Prepare new array. This is done first to simplify cleanup in
	 * case the new data set is incompatible, the node only contains
	 * unloaded data sets and there's not enough memory for the array.
	 */
	loaded_info = FUNC5((num + 1)* sizeof(struct gcov_info *), M_GCOV, M_NOWAIT|M_ZERO);
	if (!loaded_info) {
		FUNC4(LOG_WARNING, "could not add '%s' (out of memory)\n",
			FUNC1(info));
		return;
	}
	FUNC6(loaded_info, node->loaded_info,
	       num * sizeof(struct gcov_info *));
	loaded_info[num] = info;
	/* Check if the new data set is compatible. */
	if (num == 0) {
		/*
		 * A module was unloaded, modified and reloaded. The new
		 * data set replaces the copy of the last one.
		 */
		if (!FUNC3(node->unloaded_info, info)) {
			FUNC4(LOG_WARNING, "discarding saved data for %s "
				"(incompatible version)\n",
				FUNC1(info));
			FUNC2(node->unloaded_info);
			node->unloaded_info = NULL;
		}
	} else {
		/*
		 * Two different versions of the same object file are loaded.
		 * The initial one takes precedence.
		 */
		if (!FUNC3(node->loaded_info[0], info)) {
			FUNC4(LOG_WARNING, "could not add '%s' (incompatible "
				"version)\n", FUNC1(info));
			FUNC0(loaded_info, M_GCOV);
			return;
		}
	}
	/* Overwrite previous array. */
	FUNC0(node->loaded_info, M_GCOV);
	node->loaded_info = loaded_info;
	node->num_loaded = num + 1;
}