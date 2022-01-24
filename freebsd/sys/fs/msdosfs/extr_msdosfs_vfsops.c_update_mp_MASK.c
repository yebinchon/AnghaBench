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
struct thread {int dummy; } ;
struct msdosfsmount {int pm_gid; int pm_uid; int pm_mask; int pm_dirmask; int pm_flags; int /*<<< orphan*/ * pm_u2d; int /*<<< orphan*/ * pm_d2u; int /*<<< orphan*/ * pm_u2w; int /*<<< orphan*/ * pm_w2u; } ;
struct mount {int /*<<< orphan*/  mnt_optnew; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* open ) (void*,void*,int /*<<< orphan*/ **) ;} ;

/* Variables and functions */
 int ALLPERMS ; 
 int MSDOSFSMNT_KICONV ; 
 int MSDOSFSMNT_LONGNAME ; 
 int MSDOSFSMNT_NOWIN95 ; 
 int MSDOSFSMNT_SHORTNAME ; 
 struct msdosfsmount* FUNC0 (struct mount*) ; 
 TYPE_1__* msdosfs_iconv ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,void**,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,char*,int*) ; 

__attribute__((used)) static int
FUNC8(struct mount *mp, struct thread *td)
{
	struct msdosfsmount *pmp = FUNC0(mp);
	void *dos, *win, *local;
	int error, v;

	if (!FUNC6(mp->mnt_optnew, "kiconv", NULL, NULL)) {
		if (msdosfs_iconv != NULL) {
			error = FUNC6(mp->mnt_optnew,
			    "cs_win", &win, NULL);
			if (!error)
				error = FUNC6(mp->mnt_optnew,
				    "cs_local", &local, NULL);
			if (!error)
				error = FUNC6(mp->mnt_optnew,
				    "cs_dos", &dos, NULL);
			if (!error) {
				msdosfs_iconv->open(win, local, &pmp->pm_u2w);
				msdosfs_iconv->open(local, win, &pmp->pm_w2u);
				msdosfs_iconv->open(dos, local, &pmp->pm_u2d);
				msdosfs_iconv->open(local, dos, &pmp->pm_d2u);
			}
			if (error != 0)
				return (error);
		} else {
			pmp->pm_w2u = NULL;
			pmp->pm_u2w = NULL;
			pmp->pm_d2u = NULL;
			pmp->pm_u2d = NULL;
		}
	}

	if (FUNC7(mp->mnt_optnew, "gid", "%d", &v) == 1)
		pmp->pm_gid = v;
	if (FUNC7(mp->mnt_optnew, "uid", "%d", &v) == 1)
		pmp->pm_uid = v;
	if (FUNC7(mp->mnt_optnew, "mask", "%d", &v) == 1)
		pmp->pm_mask = v & ALLPERMS;
	if (FUNC7(mp->mnt_optnew, "dirmask", "%d", &v) == 1)
		pmp->pm_dirmask = v & ALLPERMS;
	FUNC5(mp->mnt_optnew, "shortname",
	    &pmp->pm_flags, MSDOSFSMNT_SHORTNAME);
	FUNC5(mp->mnt_optnew, "shortnames",
	    &pmp->pm_flags, MSDOSFSMNT_SHORTNAME);
	FUNC5(mp->mnt_optnew, "longname",
	    &pmp->pm_flags, MSDOSFSMNT_LONGNAME);
	FUNC5(mp->mnt_optnew, "longnames",
	    &pmp->pm_flags, MSDOSFSMNT_LONGNAME);
	FUNC5(mp->mnt_optnew, "kiconv",
	    &pmp->pm_flags, MSDOSFSMNT_KICONV);

	if (FUNC6(mp->mnt_optnew, "nowin95", NULL, NULL) == 0)
		pmp->pm_flags |= MSDOSFSMNT_NOWIN95;
	else
		pmp->pm_flags &= ~MSDOSFSMNT_NOWIN95;

	if (pmp->pm_flags & MSDOSFSMNT_NOWIN95)
		pmp->pm_flags |= MSDOSFSMNT_SHORTNAME;
	else
		pmp->pm_flags |= MSDOSFSMNT_LONGNAME;
	return 0;
}