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
struct tmpfs_mount {scalar_t__ tm_refcount; scalar_t__ tm_pages_used; scalar_t__ tm_nodes_inuse; int /*<<< orphan*/  tm_allnode_lock; int /*<<< orphan*/  tm_node_pool; int /*<<< orphan*/  tm_dirent_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_TMPFSMNT ; 
 int /*<<< orphan*/  FUNC1 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct tmpfs_mount *tmp)
{

	FUNC0(tmp->tm_refcount > 0);
	tmp->tm_refcount--;
	if (tmp->tm_refcount > 0) {
		FUNC1(tmp);
		return;
	}
	FUNC1(tmp);

	FUNC4(tmp->tm_dirent_pool);
	FUNC4(tmp->tm_node_pool);

	FUNC3(&tmp->tm_allnode_lock);
	FUNC0(tmp->tm_pages_used == 0);
	FUNC0(tmp->tm_nodes_inuse == 0);

	FUNC2(tmp, M_TMPFSMNT);
}