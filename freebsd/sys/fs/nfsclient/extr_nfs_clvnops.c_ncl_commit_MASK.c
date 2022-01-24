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
typedef  int /*<<< orphan*/  u_quad_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct uio {int uio_resid; int /*<<< orphan*/  uio_offset; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {int n_flag; } ;
struct nfsmount {int nm_state; int /*<<< orphan*/  nm_mtx; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EIO ; 
 int NDSCOMMIT ; 
 scalar_t__ FUNC0 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int NFSSTA_HASWRITEVERF ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  NFSV4OPEN_ACCESSWRITE ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct vnode*,struct uio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vnode*,int /*<<< orphan*/ ,int,struct ucred*,struct thread*,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 

int
FUNC12(struct vnode *vp, u_quad_t offset, int cnt, struct ucred *cred,
   struct thread *td)
{
	struct nfsvattr nfsva;
	struct nfsmount *nmp = FUNC4(vp->v_mount);
	struct nfsnode *np;
	struct uio uio;
	int error, attrflag;

	np = FUNC5(vp);
	error = EIO;
	attrflag = 0;
	if (FUNC0(nmp) && (np->n_flag & NDSCOMMIT) != 0) {
		uio.uio_offset = offset;
		uio.uio_resid = cnt;
		error = FUNC8(vp, &uio, NULL, NULL,
		    NFSV4OPEN_ACCESSWRITE, 1, cred, td);
		if (error != 0) {
			FUNC1(np);
			np->n_flag &= ~NDSCOMMIT;
			FUNC2(np);
		}
	}
	if (error != 0) {
		FUNC6(&nmp->nm_mtx);
		if ((nmp->nm_state & NFSSTA_HASWRITEVERF) == 0) {
			FUNC7(&nmp->nm_mtx);
			return (0);
		}
		FUNC7(&nmp->nm_mtx);
		error = FUNC11(vp, offset, cnt, cred, td, &nfsva,
		    &attrflag, NULL);
	}
	if (attrflag != 0)
		(void) FUNC9(&vp, &nfsva, NULL, NULL,
		    0, 1);
	if (error != 0 && FUNC3(vp))
		error = FUNC10(td, error, (uid_t)0, (gid_t)0);
	return (error);
}