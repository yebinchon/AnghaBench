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
struct vnode {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct smbmount {int sm_caseopt; int sm_uid; int sm_gid; int sm_file_mode; int sm_dir_mode; struct smb_dev* sm_dev; int /*<<< orphan*/  sm_flags; int /*<<< orphan*/ * sm_root; struct smb_share* sm_share; } ;
struct smb_vc {int /*<<< orphan*/  vc_srvname; int /*<<< orphan*/  vc_username; int /*<<< orphan*/  vc_txmax; } ;
struct smb_share {int /*<<< orphan*/  ss_name; } ;
struct smb_dev {int dummy; } ;
struct smb_cred {int dummy; } ;
struct TYPE_2__ {char* f_mntfromname; int /*<<< orphan*/  f_iosize; } ;
struct mount {int mnt_flag; TYPE_1__ mnt_stat; int /*<<< orphan*/  mnt_optnew; struct smbmount* mnt_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  MNAMELEN ; 
 int MNT_ROOTFS ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  M_SMBFSDATA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (char*,struct mount*) ; 
 int /*<<< orphan*/  SMBFS_MOUNT_NO_LONG ; 
 int /*<<< orphan*/  SMBM_EXEC ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct smb_vc* FUNC4 (struct smb_share*) ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC7 (struct smbmount*,int /*<<< orphan*/ ) ; 
 struct smbmount* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct smb_dev*) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,struct smb_cred*,struct smb_share**,struct smb_dev**) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_cred*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_share*,struct smb_cred*) ; 
 int /*<<< orphan*/  FUNC14 (struct smb_share*) ; 
 int /*<<< orphan*/  FUNC15 (struct smb_cred*) ; 
 struct smb_cred* FUNC16 () ; 
 int /*<<< orphan*/  smbfs_opts ; 
 int FUNC17 (struct mount*,int /*<<< orphan*/ ,struct vnode**) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct mount*) ; 
 int /*<<< orphan*/  FUNC23 (struct mount*,char*,...) ; 
 int FUNC24 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct vnode*) ; 

__attribute__((used)) static int
FUNC26(struct mount *mp)
{
	struct smbmount *smp = NULL;
	struct smb_vc *vcp;
	struct smb_share *ssp = NULL;
	struct vnode *vp;
	struct thread *td;
	struct smb_dev *dev;
	struct smb_cred *scred;
	int error, v;
	char *pc, *pe;

	dev = NULL;
	td = curthread;
	if (mp->mnt_flag & (MNT_UPDATE | MNT_ROOTFS))
		return EOPNOTSUPP;

	if (FUNC20(mp->mnt_optnew, smbfs_opts)) {
		FUNC23(mp, "%s", "Invalid option");
		return (EINVAL);
	}

	scred = FUNC16();
	FUNC12(scred, td, td->td_ucred);
	
	/* Ask userspace of `fd`, the file descriptor of this session */
	if (1 != FUNC24(mp->mnt_optnew, "fd", "%d", &v)) {
		FUNC23(mp, "No fd option");
		FUNC15(scred);
		return (EINVAL);
	}
	error = FUNC11(v, SMBM_EXEC, scred, &ssp, &dev);
	smp = FUNC8(sizeof(*smp), M_SMBFSDATA, M_WAITOK | M_ZERO);
	if (error) {
		FUNC9("invalid device handle %d (%d)\n", v, error);
		FUNC23(mp, "invalid device handle %d %d\n", v, error);
		FUNC15(scred);
		FUNC7(smp, M_SMBFSDATA);
		return error;
	}
	vcp = FUNC4(ssp);
	FUNC14(ssp);
	mp->mnt_stat.f_iosize = FUNC4(ssp)->vc_txmax;
	mp->mnt_data = smp;
	smp->sm_share = ssp;
	smp->sm_root = NULL;
	smp->sm_dev = dev;
	if (1 != FUNC24(mp->mnt_optnew,
	    "caseopt", "%d", &smp->sm_caseopt)) {
		FUNC23(mp, "Invalid caseopt");
		error = EINVAL;
		goto bad;
	}
	if (1 != FUNC24(mp->mnt_optnew, "uid", "%d", &v)) {
		FUNC23(mp, "Invalid uid");
		error = EINVAL;
		goto bad;
	}
	smp->sm_uid = v;

	if (1 != FUNC24(mp->mnt_optnew, "gid", "%d", &v)) {
		FUNC23(mp, "Invalid gid");
		error = EINVAL;
		goto bad;
	}
	smp->sm_gid = v;

	if (1 != FUNC24(mp->mnt_optnew, "file_mode", "%d", &v)) {
		FUNC23(mp, "Invalid file_mode");
		error = EINVAL;
		goto bad;
	}
	smp->sm_file_mode = (v & (S_IRWXU|S_IRWXG|S_IRWXO)) | S_IFREG;

	if (1 != FUNC24(mp->mnt_optnew, "dir_mode", "%d", &v)) {
		FUNC23(mp, "Invalid dir_mode");
		error = EINVAL;
		goto bad;
	}
	smp->sm_dir_mode  = (v & (S_IRWXU|S_IRWXG|S_IRWXO)) | S_IFDIR;

	FUNC21(mp->mnt_optnew,
	    "nolong", &smp->sm_flags, SMBFS_MOUNT_NO_LONG);

	pc = mp->mnt_stat.f_mntfromname;
	pe = pc + sizeof(mp->mnt_stat.f_mntfromname);
	FUNC6(pc, MNAMELEN);
	*pc++ = '/';
	*pc++ = '/';
	pc = FUNC18(FUNC19(pc, vcp->vc_username, pe - pc - 2), 0);
	if (pc < pe-1) {
		*(pc++) = '@';
		pc = FUNC18(FUNC19(pc, vcp->vc_srvname, pe - pc - 2), 0);
		if (pc < pe - 1) {
			*(pc++) = '/';
			FUNC19(pc, ssp->ss_name, pe - pc - 2);
		}
	}
	FUNC22(mp);
	error = FUNC17(mp, LK_EXCLUSIVE, &vp);
	if (error) {
		FUNC23(mp, "smbfs_root error: %d", error);
		goto bad;
	}
	FUNC5(vp, 0);
	FUNC1("root.v_usecount = %d\n", FUNC25(vp));

#ifdef DIAGNOSTIC
	SMBERROR("mp=%p\n", mp);
#endif
	FUNC15(scred);
	return error;
bad:
	if (ssp)
		FUNC13(ssp, scred);
	FUNC15(scred);	
	FUNC2();
	if (error && smp->sm_dev == dev) {
		smp->sm_dev = NULL;
		FUNC10(dev);
	}
	FUNC3();
	FUNC7(smp, M_SMBFSDATA);
	return error;
}