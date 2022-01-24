#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tmpfs_node {scalar_t__ tn_links; } ;
struct tmpfs_mount {int /*<<< orphan*/  tm_dirent_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/ * td_name; } ;
struct tmpfs_dirent {TYPE_1__ ud; struct tmpfs_node* td_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_TMPFSNAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tmpfs_dirent*) ; 

void
FUNC4(struct tmpfs_mount *tmp, struct tmpfs_dirent *de)
{
	struct tmpfs_node *node;

	node = de->td_node;
	if (node != NULL) {
		FUNC0(node->tn_links > 0);
		node->tn_links--;
	}
	if (!FUNC2(de) && de->ud.td_name != NULL)
		FUNC1(de->ud.td_name, M_TMPFSNAME);
	FUNC3(tmp->tm_dirent_pool, de);
}