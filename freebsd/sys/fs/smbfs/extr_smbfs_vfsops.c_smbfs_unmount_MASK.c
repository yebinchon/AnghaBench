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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct smbmount {scalar_t__ sm_didrele; struct smb_dev* sm_dev; int /*<<< orphan*/  sm_share; } ;
struct smb_dev {int dummy; } ;
struct smb_cred {int dummy; } ;
struct mount {int /*<<< orphan*/  mnt_flag; int /*<<< orphan*/ * mnt_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int FORCECLOSE ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  MNT_LOCAL ; 
 int /*<<< orphan*/  M_SMBFSDATA ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct smbmount* FUNC5 (struct mount*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (struct smbmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_cred*,struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_cred*) ; 
 struct smb_cred* FUNC13 () ; 
 int FUNC14 (struct mount*,int,int,struct thread*) ; 

__attribute__((used)) static int
FUNC15(struct mount *mp, int mntflags)
{
	struct thread *td;
	struct smbmount *smp = FUNC5(mp);
	struct smb_cred *scred;
	struct smb_dev *dev;
	int error, flags;

	FUNC2("smbfs_unmount: flags=%04x\n", mntflags);
	td = curthread;
	flags = 0;
	if (mntflags & MNT_FORCE)
		flags |= FORCECLOSE;
	/*
	 * Keep trying to flush the vnode list for the mount while 
	 * some are still busy and we are making progress towards
	 * making them not busy. This is needed because smbfs vnodes
	 * reference their parent directory but may appear after their
	 * parent in the list; one pass over the vnode list is not
	 * sufficient in this case.
	 */
	do {
		smp->sm_didrele = 0;
		/* There is 1 extra root vnode reference from smbfs_mount(). */
		error = FUNC14(mp, 1, flags, td);
	} while (error == EBUSY && smp->sm_didrele != 0);
	if (error)
		return error;
	scred = FUNC13();
	FUNC9(scred, td, td->td_ucred);
	error = FUNC10(smp->sm_share);
	if (error)
		goto out;
	FUNC11(smp->sm_share, scred);
	FUNC3();
	dev = smp->sm_dev;
	if (!dev)
		FUNC7("No private data for mount point");
	FUNC8(dev);
	mp->mnt_data = NULL;
	FUNC4();
	FUNC6(smp, M_SMBFSDATA);
	FUNC0(mp);
	mp->mnt_flag &= ~MNT_LOCAL;
	FUNC1(mp);
out:
	FUNC12(scred);
	return error;
}