#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct TYPE_3__ {int cn_lkflags; int cn_flags; char* cn_nameptr; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/ * cn_thread; struct ucred* cn_cred; int /*<<< orphan*/  cn_nameiop; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  DELETE ; 
 int ISLASTCN ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LOCKLEAF ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int SAVENAME ; 
 int FUNC3 (struct vnode*,struct vnode**,TYPE_1__*) ; 
 int FUNC4 (struct vnode*,struct vnode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (struct nameidata*,char**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

__attribute__((used)) static int
FUNC11(struct vnode *dvp, char *fname, struct ucred *tcred,
    NFSPROC_T *p)
{
	struct nameidata named;
	struct vnode *nvp;
	char *bufp;
	u_long *hashp;
	int error;

	error = FUNC1(dvp, LK_EXCLUSIVE);
	if (error != 0)
		return (error);
	named.ni_cnd.cn_nameiop = DELETE;
	named.ni_cnd.cn_lkflags = LK_EXCLUSIVE | LK_RETRY;
	named.ni_cnd.cn_cred = tcred;
	named.ni_cnd.cn_thread = p;
	named.ni_cnd.cn_flags = ISLASTCN | LOCKPARENT | LOCKLEAF | SAVENAME;
	FUNC6(&named, &bufp, &hashp);
	named.ni_cnd.cn_nameptr = bufp;
	named.ni_cnd.cn_namelen = FUNC9(fname);
	FUNC8(bufp, fname, NAME_MAX);
	FUNC0(4, "nfsrv_pnfsremove: filename=%s\n", bufp);
	error = FUNC3(dvp, &nvp, &named.ni_cnd);
	FUNC0(4, "nfsrv_pnfsremove: aft LOOKUP=%d\n", error);
	if (error == 0) {
		error = FUNC4(dvp, nvp, &named.ni_cnd);
		FUNC10(nvp);
	}
	FUNC2(dvp, 0);
	FUNC5(&named);
	if (error != 0)
		FUNC7("pNFS: nfsrv_pnfsremove failed=%d\n", error);
	return (error);
}