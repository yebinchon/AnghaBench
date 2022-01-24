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
typedef  scalar_t__ u_long ;
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct componentname {int cn_namelen; char* cn_pnbuf; int cn_flags; int cn_lkflags; char* cn_nameptr; int /*<<< orphan*/  cn_cred; struct thread* cn_thread; scalar_t__ cn_nameiop; } ;

/* Variables and functions */
 scalar_t__ CREATE ; 
 scalar_t__ DELETE ; 
 int DOWHITEOUT ; 
 int HASBUF ; 
 int ISLASTCN ; 
 int LK_EXCLUSIVE ; 
 int /*<<< orphan*/  LK_RELEASE ; 
 int LK_RETRY ; 
 int LOCKLEAF ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NOCACHE ; 
 scalar_t__ RENAME ; 
 int SAVENAME ; 
 int SAVESTART ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  namei_zone ; 
 int FUNC2 (struct vnode*,struct vnode**,struct componentname*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

int
FUNC8(struct vnode *dvp, struct vnode **vpp,
		 struct componentname *cnp, struct componentname *cn,
		 struct thread *td, char *path, int pathlen, u_long nameiop)
{
	int	error;

	cn->cn_namelen = pathlen;
	cn->cn_pnbuf = FUNC3(namei_zone, M_WAITOK);
	FUNC1(path, cn->cn_pnbuf, pathlen);
	cn->cn_pnbuf[pathlen] = '\0';

	cn->cn_nameiop = nameiop;
	cn->cn_flags = (LOCKPARENT | LOCKLEAF | HASBUF | SAVENAME | ISLASTCN);
	cn->cn_lkflags = LK_EXCLUSIVE;
	cn->cn_thread = td;
	cn->cn_cred = cnp->cn_cred;

	cn->cn_nameptr = cn->cn_pnbuf;

	if (nameiop == DELETE)
		cn->cn_flags |= (cnp->cn_flags & (DOWHITEOUT | SAVESTART));
	else if (RENAME == nameiop)
		cn->cn_flags |= (cnp->cn_flags & SAVESTART);
	else if (nameiop == CREATE)
		cn->cn_flags |= NOCACHE;

	FUNC6(dvp);
	FUNC0(dvp, LK_RELEASE);

	if ((error = FUNC2(dvp, vpp, cn))) {
		FUNC4(namei_zone, cn->cn_pnbuf);
		cn->cn_flags &= ~HASBUF;
		FUNC5(dvp, LK_EXCLUSIVE | LK_RETRY);
	} else
		FUNC7(dvp);

	return (error);
}