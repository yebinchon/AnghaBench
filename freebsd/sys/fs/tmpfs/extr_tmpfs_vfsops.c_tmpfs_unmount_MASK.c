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
struct tmpfs_node {scalar_t__ tn_type; } ;
struct tmpfs_mount {int /*<<< orphan*/  tm_nodes_used; } ;
struct mount {scalar_t__ mnt_nvnodelistsize; int /*<<< orphan*/  mnt_flag; int /*<<< orphan*/ * mnt_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int FORCECLOSE ; 
 struct tmpfs_node* FUNC0 (int /*<<< orphan*/ *) ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  MNT_LOCAL ; 
 int /*<<< orphan*/  FUNC3 (struct tmpfs_mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmpfs_node*) ; 
 scalar_t__ VDIR ; 
 struct tmpfs_mount* FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  VR_START_WRITE ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC7 (struct tmpfs_mount*,struct tmpfs_node*) ; 
 scalar_t__ FUNC8 (struct tmpfs_mount*,struct tmpfs_node*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tmpfs_mount*) ; 
 int FUNC10 (struct mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mount*) ; 

__attribute__((used)) static int
FUNC13(struct mount *mp, int mntflags)
{
	struct tmpfs_mount *tmp;
	struct tmpfs_node *node;
	int error, flags;

	flags = (mntflags & MNT_FORCE) != 0 ? FORCECLOSE : 0;
	tmp = FUNC6(mp);

	/* Stop writers */
	error = FUNC12(mp);
	if (error != 0)
		return (error);
	/*
	 * At this point, nodes cannot be destroyed by any other
	 * thread because write suspension is started.
	 */

	for (;;) {
		error = FUNC10(mp, 0, flags, curthread);
		if (error != 0) {
			FUNC11(mp, VR_START_WRITE);
			return (error);
		}
		FUNC1(mp);
		if (mp->mnt_nvnodelistsize == 0) {
			FUNC2(mp);
			break;
		}
		FUNC2(mp);
		if ((mntflags & MNT_FORCE) == 0) {
			FUNC11(mp, VR_START_WRITE);
			return (EBUSY);
		}
	}

	FUNC3(tmp);
	while ((node = FUNC0(&tmp->tm_nodes_used)) != NULL) {
		FUNC4(node);
		if (node->tn_type == VDIR)
			FUNC7(tmp, node);
		if (FUNC8(tmp, node, true))
			FUNC3(tmp);
		else
			FUNC5(node);
	}

	mp->mnt_data = NULL;
	FUNC9(tmp);
	FUNC11(mp, VR_START_WRITE);

	FUNC1(mp);
	mp->mnt_flag &= ~MNT_LOCAL;
	FUNC2(mp);

	return (0);
}