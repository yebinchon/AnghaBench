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
typedef  int /*<<< orphan*/  u_int ;
struct tmpfs_node {int /*<<< orphan*/  tn_links; } ;
struct tmpfs_mount {int /*<<< orphan*/  tm_dirent_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_name; } ;
struct tmpfs_dirent {scalar_t__ td_namelen; TYPE_1__ ud; struct tmpfs_node* td_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TMPFSNAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tmpfs_dirent*,char const*,int /*<<< orphan*/ ) ; 
 struct tmpfs_dirent* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct tmpfs_mount *tmp, struct tmpfs_node *node,
    const char *name, u_int len, struct tmpfs_dirent **de)
{
	struct tmpfs_dirent *nde;

	nde = FUNC2(tmp->tm_dirent_pool, M_WAITOK);
	nde->td_node = node;
	if (name != NULL) {
		nde->ud.td_name = FUNC0(len, M_TMPFSNAME, M_WAITOK);
		FUNC1(nde, name, len);
	} else
		nde->td_namelen = 0;
	if (node != NULL)
		node->tn_links++;

	*de = nde;

	return 0;
}