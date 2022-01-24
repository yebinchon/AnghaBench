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
struct TYPE_2__ {int /*<<< orphan*/ * bo_object; } ;
struct vnode {TYPE_1__ v_bufobj; int /*<<< orphan*/  v_mount; } ;
struct thread {int dummy; } ;
struct nfsnode {scalar_t__ n_directio_asyncwr; int /*<<< orphan*/  n_flag; scalar_t__ n_attrstamp; } ;
struct nfsmount {int nm_flag; int /*<<< orphan*/  nm_mountp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 int NFSMNT_INT ; 
 int /*<<< orphan*/  FUNC4 (struct nfsnode*) ; 
 int /*<<< orphan*/  NMODIFIED ; 
 int /*<<< orphan*/  OBJPC_SYNC ; 
 int PCATCH ; 
 struct nfsmount* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct nfsnode* FUNC8 (struct vnode*) ; 
 int V_ALLOWCLEAN ; 
 int V_SAVE ; 
 int V_VMIO ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int) ; 
 int FUNC10 (struct vnode*) ; 
 int FUNC11 (struct nfsmount*,struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,struct thread*) ; 
 int FUNC13 (struct vnode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC15(struct vnode *vp, int flags, struct thread *td, int intrflg)
{
	struct nfsnode *np = FUNC8(vp);
	struct nfsmount *nmp = FUNC5(vp->v_mount);
	int error = 0, slpflag, slptimeo;
	bool old_lock;

	FUNC0(vp, "ncl_vinvalbuf");

	if ((nmp->nm_flag & NFSMNT_INT) == 0)
		intrflg = 0;
	if (FUNC1(nmp->nm_mountp))
		intrflg = 1;
	if (intrflg) {
		slpflag = PCATCH;
		slptimeo = 2 * hz;
	} else {
		slpflag = 0;
		slptimeo = 0;
	}

	old_lock = FUNC10(vp);
	if (old_lock)
		flags |= V_ALLOWCLEAN;

	/*
	 * Now, flush as required.
	 */
	if ((flags & (V_SAVE | V_VMIO)) == V_SAVE &&
	     vp->v_bufobj.bo_object != NULL) {
		FUNC6(vp->v_bufobj.bo_object);
		FUNC14(vp->v_bufobj.bo_object, 0, 0, OBJPC_SYNC);
		FUNC7(vp->v_bufobj.bo_object);
		/*
		 * If the page clean was interrupted, fail the invalidation.
		 * Not doing so, we run the risk of losing dirty pages in the
		 * vinvalbuf() call below.
		 */
		if (intrflg && (error = FUNC11(nmp, td)))
			goto out;
	}

	error = FUNC13(vp, flags, slpflag, 0);
	while (error) {
		if (intrflg && (error = FUNC11(nmp, td)))
			goto out;
		error = FUNC13(vp, flags, 0, slptimeo);
	}
	if (FUNC2(nmp)) {
		FUNC12(vp, td);
		/*
		 * Invalidate the attribute cache, since writes to a DS
		 * won't update the size attribute.
		 */
		FUNC3(np);
		np->n_attrstamp = 0;
	} else
		FUNC3(np);
	if (np->n_directio_asyncwr == 0)
		np->n_flag &= ~NMODIFIED;
	FUNC4(np);
out:
	FUNC9(vp, old_lock);
	return error;
}