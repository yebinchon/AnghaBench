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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; int /*<<< orphan*/  n_flag; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  NMODIFIED ; 
 struct nfsnode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode*,struct vnode*,char*,int,struct vnode*,struct vnode*,char*,int,struct ucred*,struct thread*,struct nfsvattr*,struct nfsvattr*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct vnode *fdvp, struct vnode *fvp, char *fnameptr,
    int fnamelen, struct vnode *tdvp, struct vnode *tvp, char *tnameptr,
    int tnamelen, struct ucred *cred, struct thread *td)
{
	struct nfsvattr fnfsva, tnfsva;
	struct nfsnode *fdnp = FUNC4(fdvp);
	struct nfsnode *tdnp = FUNC4(tdvp);
	int error = 0, fattrflag, tattrflag;

	error = FUNC7(fdvp, fvp, fnameptr, fnamelen, tdvp, tvp,
	    tnameptr, tnamelen, cred, td, &fnfsva, &tnfsva, &fattrflag,
	    &tattrflag, NULL, NULL);
	FUNC1(fdnp);
	fdnp->n_flag |= NMODIFIED;
	if (fattrflag != 0) {
		FUNC2(fdnp);
		(void) FUNC5(&fdvp, &fnfsva, NULL, NULL, 0, 1);
	} else {
		fdnp->n_attrstamp = 0;
		FUNC2(fdnp);
		FUNC0(fdvp);
	}
	FUNC1(tdnp);
	tdnp->n_flag |= NMODIFIED;
	if (tattrflag != 0) {
		FUNC2(tdnp);
		(void) FUNC5(&tdvp, &tnfsva, NULL, NULL, 0, 1);
	} else {
		tdnp->n_attrstamp = 0;
		FUNC2(tdnp);
		FUNC0(tdvp);
	}
	if (error && FUNC3(fdvp))
		error = FUNC6(td, error, (uid_t)0, (gid_t)0);
	return (error);
}