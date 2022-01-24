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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int /*<<< orphan*/  nm_mtx; } ;
struct nfsfsinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsmount*,struct nfsfsinfo*) ; 
 int FUNC4 (struct vnode*,struct nfsfsinfo*,struct ucred*,struct thread*,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 

int
FUNC5(struct nfsmount *nmp, struct vnode *vp, struct ucred *cred,
    struct thread *td)
{
	struct nfsfsinfo fs;
	struct nfsvattr nfsva;
	int error, attrflag;
	
	error = FUNC4(vp, &fs, cred, td, &nfsva, &attrflag, NULL);
	if (!error) {
		if (attrflag)
			(void) FUNC2(&vp, &nfsva, NULL, NULL, 0,
			    1);
		FUNC0(&nmp->nm_mtx);
		FUNC3(nmp, &fs);
		FUNC1(&nmp->nm_mtx);
	}
	return (error);
}