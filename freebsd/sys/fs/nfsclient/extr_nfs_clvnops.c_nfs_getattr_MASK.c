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
typedef  int /*<<< orphan*/  uid_t ;
struct vop_getattr_args {int /*<<< orphan*/  a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {int /*<<< orphan*/  va_mtime; int /*<<< orphan*/  va_filerev; int /*<<< orphan*/  va_bytes; int /*<<< orphan*/  va_rdev; int /*<<< orphan*/  va_flags; int /*<<< orphan*/  va_gen; int /*<<< orphan*/  va_ctime; int /*<<< orphan*/  va_atime; int /*<<< orphan*/  va_blocksize; int /*<<< orphan*/  va_size; int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_fsid; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_nlink; int /*<<< orphan*/  va_mode; int /*<<< orphan*/  va_type; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_flag; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {int /*<<< orphan*/  accesscache_misses; } ;

/* Variables and functions */
 int NACC ; 
 int NCHG ; 
 int /*<<< orphan*/  NFSACCESS_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int NUPD ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 struct thread* curthread ; 
 scalar_t__ FUNC6 (struct vnode*,struct vattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_prime_access_cache ; 
 scalar_t__ nfsaccess_cache_timeout ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct vnode**,struct nfsvattr*,struct vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vnode*,int /*<<< orphan*/ ,struct thread*,struct nfsvattr*,int /*<<< orphan*/ *) ; 
 TYPE_1__ nfsstatsv1 ; 

__attribute__((used)) static int
FUNC12(struct vop_getattr_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct thread *td = curthread;	/* XXX */
	struct nfsnode *np = FUNC5(vp);
	int error = 0;
	struct nfsvattr nfsva;
	struct vattr *vap = ap->a_vap;
	struct vattr vattr;

	/*
	 * Update local times for special files.
	 */
	FUNC1(np);
	if (np->n_flag & (NACC | NUPD))
		np->n_flag |= NCHG;
	FUNC2(np);
	/*
	 * First look in the cache.
	 */
	if (FUNC6(vp, &vattr) == 0) {
		vap->va_type = vattr.va_type;
		vap->va_mode = vattr.va_mode;
		vap->va_nlink = vattr.va_nlink;
		vap->va_uid = vattr.va_uid;
		vap->va_gid = vattr.va_gid;
		vap->va_fsid = vattr.va_fsid;
		vap->va_fileid = vattr.va_fileid;
		vap->va_size = vattr.va_size;
		vap->va_blocksize = vattr.va_blocksize;
		vap->va_atime = vattr.va_atime;
		vap->va_mtime = vattr.va_mtime;
		vap->va_ctime = vattr.va_ctime;
		vap->va_gen = vattr.va_gen;
		vap->va_flags = vattr.va_flags;
		vap->va_rdev = vattr.va_rdev;
		vap->va_bytes = vattr.va_bytes;
		vap->va_filerev = vattr.va_filerev;
		/*
		 * Get the local modify time for the case of a write
		 * delegation.
		 */
		FUNC8(vp, &vap->va_mtime);
		return (0);
	}

	if (FUNC3(vp) && nfs_prime_access_cache &&
	    nfsaccess_cache_timeout > 0) {
		FUNC0(nfsstatsv1.accesscache_misses);
		FUNC7(vp, NFSACCESS_ALL, td, ap->a_cred, NULL);
		if (FUNC6(vp, ap->a_vap) == 0) {
			FUNC8(vp, &ap->a_vap->va_mtime);
			return (0);
		}
	}
	error = FUNC11(vp, ap->a_cred, td, &nfsva, NULL);
	if (!error)
		error = FUNC9(&vp, &nfsva, vap, NULL, 0, 0);
	if (!error) {
		/*
		 * Get the local modify time for the case of a write
		 * delegation.
		 */
		FUNC8(vp, &vap->va_mtime);
	} else if (FUNC4(vp)) {
		error = FUNC10(td, error, (uid_t)0, (gid_t)0);
	}
	return (error);
}