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
struct gcov_node {int /*<<< orphan*/  children; int /*<<< orphan*/  dentry; int /*<<< orphan*/  name; void* loaded_info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct gcov_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  M_GCOV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_entry ; 
 int /*<<< orphan*/  all_head ; 
 int /*<<< orphan*/  children_entry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct gcov_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gcov_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcov_data_fops ; 
 int /*<<< orphan*/  FUNC6 (struct gcov_node*,struct gcov_info*,char const*,struct gcov_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static struct gcov_node *
FUNC10(struct gcov_node *parent, struct gcov_info *info, const char *name)
{
	struct gcov_node *node;

	node = FUNC8(sizeof(struct gcov_node) + FUNC9(name) + 1, M_GCOV, M_NOWAIT|M_ZERO);
	if (!node)
		goto err_nomem;
	if (info) {
		node->loaded_info = FUNC8(sizeof(struct gcov_info *), M_GCOV, M_NOWAIT|M_ZERO);
		if (!node->loaded_info)
			goto err_nomem;
	}
	FUNC6(node, info, name, parent);
	/* Differentiate between gcov data file nodes and directory nodes. */
	if (info) {
		node->dentry = FUNC3(FUNC4(node->name), 0600,
					parent->dentry, node, &gcov_data_fops);
	} else
		node->dentry = FUNC2(node->name, parent->dentry);
	if (!node->dentry) {
		FUNC7(LOG_WARNING, "could not create file\n");
		FUNC5(node, M_GCOV);
		return NULL;
	}
	if (info)
		FUNC1(node, parent->dentry);
	FUNC0(&parent->children, node, children_entry);
	FUNC0(&all_head, node, all_entry);

	return (node);

err_nomem:
	FUNC5(node, M_GCOV);
	FUNC7(LOG_WARNING, "out of memory\n");
	return NULL;
}