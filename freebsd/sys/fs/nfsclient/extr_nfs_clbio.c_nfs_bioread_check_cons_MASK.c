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
struct vnode {scalar_t__ v_type; } ;
struct vattr {int /*<<< orphan*/  va_mtime; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsnode {int n_flag; int /*<<< orphan*/  n_mtime; scalar_t__ n_attrstamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NMODIFIED ; 
 int NSIZECHANGED ; 
 scalar_t__ VDIR ; 
 int FUNC4 (struct vnode*,struct vattr*,struct ucred*) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int V_ALLOWCLEAN ; 
 int V_SAVE ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int) ; 
 int FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int FUNC9 (struct vnode*,int,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static inline int
FUNC11(struct vnode *vp, struct thread *td, struct ucred *cred)
{
	int error = 0;
	struct vattr vattr;
	struct nfsnode *np = FUNC5(vp);
	bool old_lock;

	/*
	 * Ensure the exclusove access to the node before checking
	 * whether the cache is consistent.
	 */
	old_lock = FUNC7(vp);
	FUNC1(np);
	if (np->n_flag & NMODIFIED) {
		FUNC2(np);
		if (vp->v_type != VREG) {
			if (vp->v_type != VDIR)
				FUNC10("nfs: bioread, not dir");
			FUNC8(vp);
			error = FUNC9(vp, V_SAVE | V_ALLOWCLEAN, td, 1);
			if (error != 0)
				goto out;
		}
		np->n_attrstamp = 0;
		FUNC0(vp);
		error = FUNC4(vp, &vattr, cred);
		if (error)
			goto out;
		FUNC1(np);
		np->n_mtime = vattr.va_mtime;
		FUNC2(np);
	} else {
		FUNC2(np);
		error = FUNC4(vp, &vattr, cred);
		if (error)
			goto out;
		FUNC1(np);
		if ((np->n_flag & NSIZECHANGED)
		    || (FUNC3(&np->n_mtime, &vattr.va_mtime))) {
			FUNC2(np);
			if (vp->v_type == VDIR)
				FUNC8(vp);
			error = FUNC9(vp, V_SAVE | V_ALLOWCLEAN, td, 1);
			if (error != 0)
				goto out;
			FUNC1(np);
			np->n_mtime = vattr.va_mtime;
			np->n_flag &= ~NSIZECHANGED;
		}
		FUNC2(np);
	}
out:
	FUNC6(vp, old_lock);
	return (error);
}