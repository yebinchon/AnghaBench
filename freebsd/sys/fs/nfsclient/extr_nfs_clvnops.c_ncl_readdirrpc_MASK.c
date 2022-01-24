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
typedef  int /*<<< orphan*/  uid_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct uio {int uio_iovcnt; int uio_offset; int uio_resid; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_direofoffset; } ;
struct nfsmount {int dummy; } ;
typedef  int /*<<< orphan*/  nfsuint64 ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int DIRBLKSIZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NFSERR_BAD_COOKIE ; 
 int /*<<< orphan*/  FUNC1 (struct nfsmount*) ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsmount*,struct vnode*,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/ * FUNC9 (struct nfsnode*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct vnode*,struct uio*,int /*<<< orphan*/ *,struct ucred*,struct thread*,struct nfsvattr*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14(struct vnode *vp, struct uio *uiop, struct ucred *cred,
    struct thread *td)
{
	struct nfsvattr nfsva;
	nfsuint64 *cookiep, cookie;
	struct nfsnode *dnp = FUNC5(vp);
	struct nfsmount *nmp = FUNC4(vp->v_mount);
	int error = 0, eof, attrflag;

	FUNC0(uiop->uio_iovcnt == 1 &&
	    (uiop->uio_offset & (DIRBLKSIZ - 1)) == 0 &&
	    (uiop->uio_resid & (DIRBLKSIZ - 1)) == 0,
	    ("nfs readdirrpc bad uio"));

	/*
	 * If there is no cookie, assume directory was stale.
	 */
	FUNC6(dnp);
	cookiep = FUNC9(dnp, uiop->uio_offset, 0);
	if (cookiep) {
		cookie = *cookiep;
		FUNC7(dnp);
	} else {
		FUNC7(dnp);		
		return (NFSERR_BAD_COOKIE);
	}

	if (FUNC2(nmp) && !FUNC1(nmp))
		(void)FUNC8(nmp, vp, cred, td);

	error = FUNC12(vp, uiop, &cookie, cred, td, &nfsva,
	    &attrflag, &eof, NULL);
	if (attrflag)
		(void) FUNC10(&vp, &nfsva, NULL, NULL, 0, 1);

	if (!error) {
		/*
		 * We are now either at the end of the directory or have filled
		 * the block.
		 */
		if (eof)
			dnp->n_direofoffset = uiop->uio_offset;
		else {
			if (uiop->uio_resid > 0)
				FUNC13("EEK! readdirrpc resid > 0\n");
			FUNC6(dnp);
			cookiep = FUNC9(dnp, uiop->uio_offset, 1);
			*cookiep = cookie;
			FUNC7(dnp);
		}
	} else if (FUNC3(vp)) {
		error = FUNC11(td, error, (uid_t)0, (gid_t)0);
	}
	return (error);
}