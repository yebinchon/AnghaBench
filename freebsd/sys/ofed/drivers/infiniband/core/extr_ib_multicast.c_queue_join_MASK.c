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
struct mcast_member {int /*<<< orphan*/  list; struct mcast_group* group; } ;
struct mcast_group {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  refcount; int /*<<< orphan*/  pending_list; } ;

/* Variables and functions */
 scalar_t__ MCAST_BUSY ; 
 scalar_t__ MCAST_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mcast_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct mcast_member *member)
{
	struct mcast_group *group = member->group;
	unsigned long flags;

	FUNC3(&group->lock, flags);
	FUNC1(&member->list, &group->pending_list);
	if (group->state == MCAST_IDLE) {
		group->state = MCAST_BUSY;
		FUNC0(&group->refcount);
		FUNC2(mcast_wq, &group->work);
	}
	FUNC4(&group->lock, flags);
}