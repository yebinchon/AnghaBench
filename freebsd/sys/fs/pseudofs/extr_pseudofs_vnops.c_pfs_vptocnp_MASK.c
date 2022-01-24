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
struct vop_vptocnp_args {char* a_buf; int* a_buflen; struct vnode** a_vpp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct mount* v_mount; struct pfs_vdata* v_data; } ;
struct pfs_vdata {int pvd_pid; struct pfs_node* pvd_pn; } ;
struct pfs_node {scalar_t__ pn_type; char* pn_name; struct pfs_node* pn_parent; } ;
struct mount {int dummy; } ;
typedef  int /*<<< orphan*/  pidbuf ;
typedef  int pid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int LK_RETRY ; 
 int PFS_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VDIR ; 
 int FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfs_node*) ; 
 int FUNC6 (struct mount*,struct vnode**,struct pfs_node*,int) ; 
 scalar_t__ pfstype_procdir ; 
 scalar_t__ pfstype_root ; 
 int FUNC7 (char*,int,char*,int) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC13(struct vop_vptocnp_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode **dvp = ap->a_vpp;
	struct pfs_vdata *pvd = vp->v_data;
	struct pfs_node *pd = pvd->pvd_pn;
	struct pfs_node *pn;
	struct mount *mp;
	char *buf = ap->a_buf;
	int *buflen = ap->a_buflen;
	char pidbuf[PFS_NAMELEN];
	pid_t pid = pvd->pvd_pid;
	int len, i, error, locked;

	i = *buflen;
	error = 0;

	FUNC4(pd);

	if (vp->v_type == VDIR && pd->pn_type == pfstype_root) {
		*dvp = vp;
		FUNC11(*dvp);
		FUNC5(pd);
		FUNC0 (0);
	} else if (vp->v_type == VDIR && pd->pn_type == pfstype_procdir) {
		len = FUNC7(pidbuf, sizeof(pidbuf), "%d", pid);
		i -= len;
		if (i < 0) {
			error = ENOMEM;
			goto failed;
		}
		FUNC3(pidbuf, buf + i, len);
	} else {
		len = FUNC8(pd->pn_name);
		i -= len;
		if (i < 0) {
			error = ENOMEM;
			goto failed;
		}
		FUNC3(pd->pn_name, buf + i, len);
	}

	pn = pd->pn_parent;
	FUNC5(pd);

	mp = vp->v_mount;
	error = FUNC9(mp, 0);
	if (error)
		return (error);

	/*
	 * vp is held by caller.
	 */
	locked = FUNC1(vp);
	FUNC2(vp, 0);

	error = FUNC6(mp, dvp, pn, pid);
	if (error) {
		FUNC12(vp, locked | LK_RETRY);
		FUNC10(mp);
		FUNC0(error);
	}

	*buflen = i;
	FUNC2(*dvp, 0);
	FUNC12(vp, locked | LK_RETRY);
	FUNC10(mp);

	FUNC0 (0);
failed:
	FUNC5(pd);
	FUNC0(error);
}