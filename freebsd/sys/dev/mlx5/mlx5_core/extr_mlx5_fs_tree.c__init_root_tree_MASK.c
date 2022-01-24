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
struct fs_base {int dummy; } ;
struct mlx5_flow_namespace {struct fs_base base; } ;
struct mlx5_core_dev {int dummy; } ;
struct init_tree_node {scalar_t__ type; int min_ft_level; int ar_size; struct init_tree_node* children; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_ft; int /*<<< orphan*/  caps; } ;
struct fs_prio {struct fs_base base; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FS_TYPE_NAMESPACE ; 
 scalar_t__ FS_TYPE_PRIO ; 
 scalar_t__ FUNC0 (struct mlx5_flow_namespace*) ; 
 int FUNC1 (struct mlx5_flow_namespace*) ; 
 struct mlx5_flow_namespace* FUNC2 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ) ; 
 struct mlx5_flow_namespace* FUNC3 (struct mlx5_flow_namespace*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_flow_namespace*,struct fs_base*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *dev, int max_ft_level,
		    struct init_tree_node *node, struct fs_base *base_parent,
		    struct init_tree_node *tree_parent)
{
	struct mlx5_flow_namespace *fs_ns;
	struct fs_prio *fs_prio;
	int priority;
	struct fs_base *base;
	int i;
	int err = 0;

	if (node->type == FS_TYPE_PRIO) {
		if ((node->min_ft_level > max_ft_level) ||
		    !FUNC5(dev, &node->caps))
			goto out;

		FUNC4(fs_ns, base_parent);
		priority = node - tree_parent->children;
		fs_prio = FUNC3(fs_ns, priority,
					 node->max_ft,
					 node->name, node->flags);
		if (FUNC0(fs_prio)) {
			err = FUNC1(fs_prio);
			goto out;
		}
		base = &fs_prio->base;
	} else if (node->type == FS_TYPE_NAMESPACE) {
		FUNC4(fs_prio, base_parent);
		fs_ns = FUNC2(fs_prio, node->name);
		if (FUNC0(fs_ns)) {
			err = FUNC1(fs_ns);
			goto out;
		}
		base = &fs_ns->base;
	} else {
		return -EINVAL;
	}
	for (i = 0; i < node->ar_size; i++) {
		err = FUNC6(dev, max_ft_level, &node->children[i], base,
				      node);
		if (err)
			break;
	}
out:
	return err;
}