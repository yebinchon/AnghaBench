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
struct mqfs_node {scalar_t__ mn_type; int /*<<< orphan*/  mn_refcount; struct mqfs_info* mn_info; } ;
struct mqfs_info {int /*<<< orphan*/  mi_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mqfs_node*) ; 
 scalar_t__ mqfstype_dir ; 
 scalar_t__ mqfstype_root ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void
FUNC5(struct mqfs_node *node)
{
	struct mqfs_info *mqfs;
	int old, exp;

	mqfs = node->mn_info;
	old = FUNC0(&node->mn_refcount, -1);
	if (node->mn_type == mqfstype_dir ||
	    node->mn_type == mqfstype_root)
		exp = 3; /* include . and .. */
	else
		exp = 1;
	if (old == exp) {
		int locked = FUNC3(&mqfs->mi_lock);
		if (!locked)
			FUNC2(&mqfs->mi_lock);
		FUNC1(node);
		if (!locked)
			FUNC4(&mqfs->mi_lock);
	}
}