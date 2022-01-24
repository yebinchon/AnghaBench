#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vop_symlink_args {int /*<<< orphan*/  a_vpp; TYPE_3__* a_dvp; TYPE_1__* a_cnp; int /*<<< orphan*/  a_target; } ;
struct devfs_mount {int /*<<< orphan*/  dm_lock; int /*<<< orphan*/  dm_mount; } ;
struct devfs_dirent {int de_flags; int de_mode; int /*<<< orphan*/  de_dlist; TYPE_2__* de_dirent; int /*<<< orphan*/  de_symlink; struct devfs_dirent* de_dir; int /*<<< orphan*/  de_inode; scalar_t__ de_gid; scalar_t__ de_uid; } ;
struct TYPE_6__ {int /*<<< orphan*/  v_mount; struct devfs_dirent* v_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_namlen; int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFS_DEL_NORECURSE ; 
 int DE_COVERED ; 
 int DE_USER ; 
 int /*<<< orphan*/  DT_LNK ; 
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  M_DEVFS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PRIV_DEVFS_SYMLINK ; 
 struct devfs_dirent* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct devfs_dirent*,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 struct devfs_dirent* FUNC3 (struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 struct devfs_mount* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  de_list ; 
 int FUNC7 (struct devfs_dirent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct devfs_mount*,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct devfs_mount*,struct devfs_dirent*) ; 
 struct devfs_dirent* FUNC10 (struct devfs_dirent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devfs_inos ; 
 struct devfs_dirent* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct devfs_mount*,struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devfs_dirent*,struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct vop_symlink_args *ap)
{
	int i, error;
	struct devfs_dirent *dd;
	struct devfs_dirent *de, *de_covered, *de_dotdot;
	struct devfs_mount *dmp;

	error = FUNC16(curthread, PRIV_DEVFS_SYMLINK);
	if (error)
		return(error);
	dmp = FUNC4(ap->a_dvp->v_mount);
	if (FUNC12(ap->a_dvp) != 0)
		return (ENOENT);

	dd = ap->a_dvp->v_data;
	de = FUNC11(ap->a_cnp->cn_nameptr, ap->a_cnp->cn_namelen);
	de->de_flags = DE_USER;
	de->de_uid = 0;
	de->de_gid = 0;
	de->de_mode = 0755;
	de->de_inode = FUNC5(devfs_inos);
	de->de_dir = dd;
	de->de_dirent->d_type = DT_LNK;
	i = FUNC17(ap->a_target) + 1;
	de->de_symlink = FUNC15(i, M_DEVFS, M_WAITOK);
	FUNC6(ap->a_target, de->de_symlink, i);
#ifdef MAC
	mac_devfs_create_symlink(ap->a_cnp->cn_cred, dmp->dm_mount, dd, de);
#endif
	de_covered = FUNC10(dd, de->de_dirent->d_name,
	    de->de_dirent->d_namlen, 0);
	if (de_covered != NULL) {
		if ((de_covered->de_flags & DE_USER) != 0) {
			FUNC8(dmp, de, DEVFS_DEL_NORECURSE);
			FUNC18(&dmp->dm_lock);
			return (EEXIST);
		}
		FUNC0((de_covered->de_flags & DE_COVERED) == 0,
		    ("devfs_symlink: entry %p already covered", de_covered));
		de_covered->de_flags |= DE_COVERED;
	}

	de_dotdot = FUNC1(&dd->de_dlist);		/* "." */
	de_dotdot = FUNC3(de_dotdot, de_list);	/* ".." */
	FUNC2(&dd->de_dlist, de_dotdot, de, de_list);
	FUNC9(dmp, dd);
	FUNC13(dmp, de);

	return (FUNC7(de, ap->a_dvp->v_mount, LK_EXCLUSIVE, ap->a_vpp));
}