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
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct componentname {char* cn_nameptr; int cn_flags; int /*<<< orphan*/  cn_pnbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int EEXIST ; 
 int HASBUF ; 
 struct vnode* NULLVP ; 
 int PCATCH ; 
 int FUNC0 (struct vnode*,struct componentname*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int /*<<< orphan*/  namei_zone ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct vnode**,struct componentname*,struct componentname*,struct thread*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int FUNC5 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

int
FUNC8(struct vnode *dvp, struct componentname *cnp,
		   struct thread *td, char *path)
{
	int		error;
	struct vnode   *wvp;
	struct componentname cn;
	struct mount   *mp;

	if (path == NULL)
		path = cnp->cn_nameptr;

	wvp = NULLVP;
	if ((error = FUNC3(dvp, &wvp, cnp, &cn, td, path, FUNC1(path), CREATE)))
		return (error);
	if (wvp != NULLVP) {
		if (cn.cn_flags & HASBUF) {
			FUNC2(namei_zone, cn.cn_pnbuf);
			cn.cn_flags &= ~HASBUF;
		}
		if (dvp == wvp)
			FUNC7(wvp);
		else
			FUNC6(wvp);

		return (EEXIST);
	}

	if ((error = FUNC5(dvp, &mp, V_WAIT | PCATCH)))
		goto unionfs_mkwhiteout_free_out;
	error = FUNC0(dvp, &cn, CREATE);

	FUNC4(mp);

unionfs_mkwhiteout_free_out:
	if (cn.cn_flags & HASBUF) {
		FUNC2(namei_zone, cn.cn_pnbuf);
		cn.cn_flags &= ~HASBUF;
	}

	return (error);
}