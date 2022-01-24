#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tn_dirhead; } ;
struct tmpfs_node {TYPE_1__ tn_dir; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_duphead; } ;
struct tmpfs_dirent {TYPE_2__ ud; } ;
struct tmpfs_dir_cursor {struct tmpfs_dirent* tdc_current; struct tmpfs_dirent* tdc_tree; } ;

/* Variables and functions */
 struct tmpfs_dirent* FUNC0 (int /*<<< orphan*/ *) ; 
 struct tmpfs_dirent* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmpfs_dir ; 
 scalar_t__ FUNC2 (struct tmpfs_dirent*) ; 

struct tmpfs_dirent *
FUNC3(struct tmpfs_node *dnode, struct tmpfs_dir_cursor *dc)
{
	struct tmpfs_dirent *de;

	de = FUNC1(tmpfs_dir, &dnode->tn_dir.tn_dirhead);
	dc->tdc_tree = de;
	if (de != NULL && FUNC2(de))
		de = FUNC0(&de->ud.td_duphead);
	dc->tdc_current = de;

	return (dc->tdc_current);
}