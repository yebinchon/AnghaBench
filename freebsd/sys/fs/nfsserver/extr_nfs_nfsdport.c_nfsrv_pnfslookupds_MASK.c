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
typedef  int /*<<< orphan*/  u_long ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct pnfsdsfile {int /*<<< orphan*/  dsf_filename; } ;
struct TYPE_2__ {int cn_lkflags; int cn_flags; char* cn_nameptr; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/ * cn_thread; struct ucred* cn_cred; int /*<<< orphan*/  cn_nameiop; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int ISLASTCN ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int LOCKLEAF ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*) ; 
 int SAVENAME ; 
 int FUNC2 (struct vnode*,struct vnode**,TYPE_1__*) ; 
 struct ucred* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*,char**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct vnode *vp, struct vnode *dvp, struct pnfsdsfile *pf,
    struct vnode **nvpp, NFSPROC_T *p)
{
	struct nameidata named;
	struct ucred *tcred;
	char *bufp;
	u_long *hashp;
	struct vnode *nvp;
	int error;

	tcred = FUNC3();
	named.ni_cnd.cn_nameiop = LOOKUP;
	named.ni_cnd.cn_lkflags = LK_SHARED | LK_RETRY;
	named.ni_cnd.cn_cred = tcred;
	named.ni_cnd.cn_thread = p;
	named.ni_cnd.cn_flags = ISLASTCN | LOCKPARENT | LOCKLEAF | SAVENAME;
	FUNC5(&named, &bufp, &hashp);
	named.ni_cnd.cn_nameptr = bufp;
	named.ni_cnd.cn_namelen = FUNC7(pf->dsf_filename);
	FUNC6(bufp, pf->dsf_filename, NAME_MAX);
	FUNC0(4, "nfsrv_pnfslookupds: filename=%s\n", bufp);
	error = FUNC2(dvp, &nvp, &named.ni_cnd);
	FUNC0(4, "nfsrv_pnfslookupds: aft LOOKUP=%d\n", error);
	FUNC1(tcred);
	FUNC4(&named);
	if (error == 0)
		*nvpp = nvp;
	FUNC0(4, "eo nfsrv_pnfslookupds=%d\n", error);
	return (error);
}