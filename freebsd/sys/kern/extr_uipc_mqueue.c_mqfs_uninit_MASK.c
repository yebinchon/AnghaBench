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
struct vfsconf {int dummy; } ;
struct mqfs_info {int /*<<< orphan*/  mi_lock; int /*<<< orphan*/ * mi_root; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_tag ; 
 struct mqfs_info mqfs_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mqfs_info*) ; 
 int /*<<< orphan*/  mqfs_osd_jail_slot ; 
 int /*<<< orphan*/  mqnode_zone ; 
 int /*<<< orphan*/  mqnoti_zone ; 
 int /*<<< orphan*/  mqueue_zone ; 
 int /*<<< orphan*/  mvdata_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_exit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unloadable ; 

__attribute__((used)) static int
FUNC6(struct vfsconf *vfc)
{
	struct mqfs_info *mi;

	if (!unloadable)
		return (EOPNOTSUPP);
	FUNC3(mqfs_osd_jail_slot);
	FUNC0(process_exit, exit_tag);
	mi = &mqfs_data;
	FUNC1(mi->mi_root);
	mi->mi_root = NULL;
	FUNC2(mi);
	FUNC4(&mi->mi_lock);
	FUNC5(mqnode_zone);
	FUNC5(mqueue_zone);
	FUNC5(mvdata_zone);
	FUNC5(mqnoti_zone);
	return (0);
}