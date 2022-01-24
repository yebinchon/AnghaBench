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
typedef  scalar_t__ uid_t ;
struct vnode {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct statfs {int /*<<< orphan*/ * f_fstypename; int /*<<< orphan*/  f_mntfromname; int /*<<< orphan*/  f_mntonname; int /*<<< orphan*/  f_iosize; } ;
struct TYPE_3__ {int va_mode; int va_nlink; int va_fileid; int va_gen; int va_size; int /*<<< orphan*/  va_blocksize; scalar_t__ va_gid; scalar_t__ va_uid; int /*<<< orphan*/  va_type; } ;
struct nfsvattr {TYPE_1__ na_vattr; } ;
struct nfsstatfs {int dummy; } ;
struct nfsnode {int dummy; } ;
struct nfsmount {int nm_flag; int /*<<< orphan*/  nm_mtx; int /*<<< orphan*/  nm_fhsize; int /*<<< orphan*/  nm_fh; } ;
struct nfsfsinfo {int dummy; } ;
struct mount {TYPE_2__* mnt_vfc; struct statfs mnt_stat; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  vfc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  MBF_NOWAIT ; 
 int /*<<< orphan*/  MFSNAMELEN ; 
 int /*<<< orphan*/  MNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsmount*) ; 
 scalar_t__ FUNC3 (struct nfsmount*) ; 
 int NFSMNT_NFSV4 ; 
 struct vnode* FUNC4 (struct nfsnode*) ; 
 int /*<<< orphan*/  NFS_FABLKSIZE ; 
 scalar_t__ FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  VDIR ; 
 struct nfsmount* FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsnode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsmount*,struct nfsfsinfo*) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsmount*,struct nfsstatfs*,struct statfs*) ; 
 int FUNC15 (struct thread*,int,scalar_t__,scalar_t__) ; 
 int FUNC16 (struct vnode*,struct nfsfsinfo*,int /*<<< orphan*/ ,struct thread*,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct nfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct thread*,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct vnode*,struct nfsstatfs*,struct nfsfsinfo*,int /*<<< orphan*/ ,struct thread*,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct mount*) ; 
 int /*<<< orphan*/  FUNC22 (struct vnode*) ; 

__attribute__((used)) static int
FUNC23(struct mount *mp, struct statfs *sbp)
{
	struct vnode *vp;
	struct thread *td;
	struct nfsmount *nmp = FUNC6(mp);
	struct nfsvattr nfsva;
	struct nfsfsinfo fs;
	struct nfsstatfs sb;
	int error = 0, attrflag, gotfsinfo = 0, ret;
	struct nfsnode *np;

	td = curthread;

	error = FUNC20(mp, MBF_NOWAIT);
	if (error)
		return (error);
	error = FUNC10(mp, nmp->nm_fh, nmp->nm_fhsize, &np, LK_EXCLUSIVE);
	if (error) {
		FUNC21(mp);
		return (error);
	}
	vp = FUNC4(np);
	FUNC8(&nmp->nm_mtx);
	if (FUNC3(nmp) && !FUNC2(nmp)) {
		FUNC9(&nmp->nm_mtx);
		error = FUNC16(vp, &fs, td->td_ucred, td, &nfsva,
		    &attrflag, NULL);
		if (!error)
			gotfsinfo = 1;
	} else
		FUNC9(&nmp->nm_mtx);
	if (!error)
		error = FUNC18(vp, &sb, &fs, td->td_ucred, td, &nfsva,
		    &attrflag, NULL);
	if (error != 0)
		FUNC1(2, "statfs=%d\n", error);
	if (attrflag == 0) {
		ret = FUNC17(nmp, nmp->nm_fh, nmp->nm_fhsize, 1,
		    td->td_ucred, td, &nfsva, NULL, NULL);
		if (ret) {
			/*
			 * Just set default values to get things going.
			 */
			FUNC0((caddr_t)&nfsva, sizeof (struct nfsvattr));
			nfsva.na_vattr.va_type = VDIR;
			nfsva.na_vattr.va_mode = 0777;
			nfsva.na_vattr.va_nlink = 100;
			nfsva.na_vattr.va_uid = (uid_t)0;
			nfsva.na_vattr.va_gid = (gid_t)0;
			nfsva.na_vattr.va_fileid = 2;
			nfsva.na_vattr.va_gen = 1;
			nfsva.na_vattr.va_blocksize = NFS_FABLKSIZE;
			nfsva.na_vattr.va_size = 512 * 1024;
		}
	}
	(void) FUNC12(&vp, &nfsva, NULL, NULL, 0, 1);
	if (!error) {
	    FUNC8(&nmp->nm_mtx);
	    if (gotfsinfo || (nmp->nm_flag & NFSMNT_NFSV4))
		FUNC13(nmp, &fs);
	    FUNC14(nmp, &sb, sbp);
	    sbp->f_iosize = FUNC11(nmp);
	    FUNC9(&nmp->nm_mtx);
	    if (sbp != &mp->mnt_stat) {
		FUNC7(mp->mnt_stat.f_mntonname, sbp->f_mntonname, MNAMELEN);
		FUNC7(mp->mnt_stat.f_mntfromname, sbp->f_mntfromname, MNAMELEN);
	    }
	    FUNC19(&sbp->f_fstypename[0], mp->mnt_vfc->vfc_name, MFSNAMELEN);
	} else if (FUNC5(vp)) {
		error = FUNC15(td, error, (uid_t)0, (gid_t)0);
	}
	FUNC22(vp);
	FUNC21(mp);
	return (error);
}