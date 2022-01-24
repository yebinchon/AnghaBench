#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tn_dirhead; } ;
struct tmpfs_node {TYPE_2__ tn_dir; } ;
struct TYPE_7__ {int /*<<< orphan*/  td_duphead; } ;
struct tmpfs_dirent {TYPE_3__ ud; } ;
struct tmpfs_dir_cursor {struct tmpfs_dirent* tdc_current; struct tmpfs_dirent* tdc_tree; } ;
struct TYPE_5__ {int /*<<< orphan*/  entries; } ;
struct TYPE_8__ {TYPE_1__ td_dup; } ;

/* Variables and functions */
 struct tmpfs_dirent* FUNC0 (int /*<<< orphan*/ *) ; 
 struct tmpfs_dirent* FUNC1 (struct tmpfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct tmpfs_dirent* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tmpfs_dirent*) ; 
 int /*<<< orphan*/  tmpfs_dir ; 
 scalar_t__ FUNC4 (struct tmpfs_dirent*) ; 
 scalar_t__ FUNC5 (struct tmpfs_dirent*) ; 
 TYPE_4__ uh ; 

struct tmpfs_dirent *
FUNC6(struct tmpfs_node *dnode, struct tmpfs_dir_cursor *dc)
{
	struct tmpfs_dirent *de;

	FUNC2(dc->tdc_tree != NULL);
	if (FUNC4(dc->tdc_current)) {
		dc->tdc_current = FUNC1(dc->tdc_current, uh.td_dup.entries);
		if (dc->tdc_current != NULL)
			return (dc->tdc_current);
	}
	dc->tdc_tree = dc->tdc_current = FUNC3(tmpfs_dir,
	    &dnode->tn_dir.tn_dirhead, dc->tdc_tree);
	if ((de = dc->tdc_current) != NULL && FUNC5(de)) {
		dc->tdc_current = FUNC0(&de->ud.td_duphead);
		FUNC2(dc->tdc_current != NULL);
	}

	return (dc->tdc_current);
}