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
struct fs_base {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  list; int /*<<< orphan*/  users_refcount; struct fs_base* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void (*) (struct kref*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fs_base *node, void (*kref_cb)(struct kref *kref),
		    bool parent_locked)
{
	struct fs_base *parent_node = node->parent;

	if (parent_node && !parent_locked)
		FUNC3(&parent_node->lock);
	if (FUNC0(&node->users_refcount)) {
		if (parent_node) {
			/*remove from parent's list*/
			FUNC2(&node->list);
			FUNC4(&parent_node->lock);
		}
		FUNC1(&node->refcount, kref_cb);
		if (parent_node && parent_locked)
			FUNC3(&parent_node->lock);
	} else if (parent_node && !parent_locked) {
		FUNC4(&parent_node->lock);
	}
}