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
struct vnode {int /*<<< orphan*/  v_vflag; int /*<<< orphan*/  v_type; } ;
struct mount {int mnt_flag; struct fdescmount* mnt_data; int /*<<< orphan*/  mnt_optnew; } ;
struct fdescmount {struct vnode* f_root; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FD_ROOT ; 
 int /*<<< orphan*/  FMNT_LINRDLNKF ; 
 int /*<<< orphan*/  Froot ; 
 int MNT_ROOTFS ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  M_FDESCMNT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  VDIR ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VV_ROOT ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mount*,struct vnode**) ; 
 int /*<<< orphan*/  FUNC2 (struct fdescmount*,int /*<<< orphan*/ ) ; 
 struct fdescmount* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*,char*) ; 

__attribute__((used)) static int
FUNC7(struct mount *mp)
{
	struct fdescmount *fmp;
	struct vnode *rvp;
	int error;

	/*
	 * Update is a no-op
	 */
	if (mp->mnt_flag & (MNT_UPDATE | MNT_ROOTFS))
		return (EOPNOTSUPP);

	fmp = FUNC3(sizeof(struct fdescmount),
				M_FDESCMNT, M_WAITOK);	/* XXX */

	/*
	 * We need to initialize a few bits of our local mount point struct to
	 * avoid confusion in allocvp.
	 */
	mp->mnt_data = fmp;
	fmp->flags = 0;
	if (FUNC5(mp->mnt_optnew, "linrdlnk", NULL, NULL) == 0)
		fmp->flags |= FMNT_LINRDLNKF;
	error = FUNC1(Froot, -1, FD_ROOT, mp, &rvp);
	if (error) {
		FUNC2(fmp, M_FDESCMNT);
		mp->mnt_data = NULL;
		return (error);
	}
	rvp->v_type = VDIR;
	rvp->v_vflag |= VV_ROOT;
	fmp->f_root = rvp;
	FUNC0(rvp, 0);
	/* XXX -- don't mark as local to work around fts() problems */
	/*mp->mnt_flag |= MNT_LOCAL;*/
	FUNC4(mp);

	FUNC6(mp, "fdescfs");
	return (0);
}