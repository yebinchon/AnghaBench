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
struct gcov_node {int num_loaded; int /*<<< orphan*/  unloaded_info; int /*<<< orphan*/ * loaded_info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  M_GCOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 scalar_t__ gcov_persist ; 
 int FUNC2 (struct gcov_node*,struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gcov_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct gcov_node*,struct gcov_info*) ; 

__attribute__((used)) static void
FUNC6(struct gcov_node *node, struct gcov_info *info)
{
	int i;

	i = FUNC2(node, info);
	if (i < 0) {
		FUNC3(LOG_WARNING, "could not remove '%s' (not found)\n",
			FUNC1(info));
		return;
	}
	if (gcov_persist)
		FUNC5(node, info);
	/* Shrink array. */
	node->loaded_info[i] = node->loaded_info[node->num_loaded - 1];
	node->num_loaded--;
	if (node->num_loaded > 0)
		return;
	/* Last loaded data set was removed. */
	FUNC0(node->loaded_info, M_GCOV);
	node->loaded_info = NULL;
	node->num_loaded = 0;
	if (!node->unloaded_info)
		FUNC4(node);
}