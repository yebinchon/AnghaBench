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
struct gcov_node {struct gcov_node* parent; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GCOV ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 struct gcov_node* FUNC2 (struct gcov_node*,char*) ; 
 struct gcov_node* FUNC3 (struct gcov_node*,struct gcov_info*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct gcov_node*) ; 
 struct gcov_node root_node ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct gcov_info *info)
{
	char *filename;
	char *curr;
	char *next;
	struct gcov_node *parent;
	struct gcov_node *node;

	filename = FUNC7(FUNC1(info), M_GCOV, M_NOWAIT);
	if (filename == NULL)
		return;
	parent = &root_node;
	/* Create directory nodes along the path. */
	for (curr = filename; (next = FUNC5(curr, '/')); curr = next + 1) {
		if (curr == next)
			continue;
		*next = 0;
		if (FUNC6(curr, ".") == 0)
			continue;
		if (FUNC6(curr, "..") == 0) {
			if (!parent->parent)
				goto err_remove;
			parent = parent->parent;
			continue;
		}
		node = FUNC2(parent, curr);
		if (!node) {
			node = FUNC3(parent, NULL, curr);
			if (!node)
				goto err_remove;
		}
		parent = node;
	}
	/* Create file node. */
	node = FUNC3(parent, info, curr);
	if (!node)
		goto err_remove;
out:
	FUNC0(filename, M_GCOV);
	return;

err_remove:
	FUNC4(parent);
	goto out;
}