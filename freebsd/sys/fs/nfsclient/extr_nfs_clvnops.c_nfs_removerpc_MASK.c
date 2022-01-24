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
struct nfsnode {int n_flag; scalar_t__ n_attrstamp; } ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int NMODIFIED ; 
 int NREMOVEINPROG ; 
 int NREMOVEWANT ; 
 struct nfsnode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode*,char*,int,struct vnode*,struct ucred*,struct thread*,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct vnode *dvp, struct vnode *vp, char *name,
    int namelen, struct ucred *cred, struct thread *td)
{
	struct nfsvattr dnfsva;
	struct nfsnode *dnp = FUNC4(dvp);
	int error = 0, dattrflag;

	FUNC1(dnp);
	dnp->n_flag |= NREMOVEINPROG;
	FUNC2(dnp);
	error = FUNC7(dvp, name, namelen, vp, cred, td, &dnfsva,
	    &dattrflag, NULL);
	FUNC1(dnp);
	if ((dnp->n_flag & NREMOVEWANT)) {
		dnp->n_flag &= ~(NREMOVEWANT | NREMOVEINPROG);
		FUNC2(dnp);
		FUNC8((caddr_t)dnp);
	} else {
		dnp->n_flag &= ~NREMOVEINPROG;
		FUNC2(dnp);
	}
	if (dattrflag)
		(void) FUNC5(&dvp, &dnfsva, NULL, NULL, 0, 1);
	FUNC1(dnp);
	dnp->n_flag |= NMODIFIED;
	if (!dattrflag) {
		dnp->n_attrstamp = 0;
		FUNC0(dvp);
	}
	FUNC2(dnp);
	if (error && FUNC3(dvp))
		error = FUNC6(td, error, (uid_t)0, (gid_t)0);
	return (error);
}