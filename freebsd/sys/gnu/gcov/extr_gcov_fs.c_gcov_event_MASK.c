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
struct gcov_node {int dummy; } ;
struct gcov_info {int dummy; } ;
typedef  enum gcov_action { ____Placeholder_gcov_action } gcov_action ;

/* Variables and functions */
#define  GCOV_ADD 129 
#define  GCOV_REMOVE 128 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_node*,struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct gcov_info*) ; 
 struct gcov_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_lock ; 
 int /*<<< orphan*/  FUNC7 (struct gcov_node*,struct gcov_info*) ; 

__attribute__((used)) static void
FUNC8(enum gcov_action action, struct gcov_info *info)
{
	struct gcov_node *node;

	FUNC5(&node_lock);
	node = FUNC3(FUNC2(info));
	switch (action) {
	case GCOV_ADD:
		if (node)
			FUNC0(node, info);
		else
			FUNC1(info);
		break;
	case GCOV_REMOVE:
		if (node)
			FUNC7(node, info);
		else {
			FUNC4(LOG_WARNING, "could not remove '%s' (not found)\n",
				FUNC2(info));
		}
		break;
	}
	FUNC6(&node_lock);
}