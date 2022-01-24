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
struct vop_vptocnp_args {char* a_buf; int* a_buflen; struct vnode** a_vpp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; struct devfs_dirent* v_data; int /*<<< orphan*/  v_mount; } ;
struct devfs_mount {int /*<<< orphan*/  dm_lock; struct devfs_dirent* dm_rootdir; } ;
struct devfs_dirent {struct vnode* de_vnode; TYPE_1__* de_dirent; } ;
struct TYPE_2__ {scalar_t__ d_namlen; int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ VCHR ; 
 scalar_t__ VDIR ; 
 struct devfs_mount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  devfs_de_interlock ; 
 struct devfs_dirent* FUNC4 (struct devfs_dirent*) ; 
 int FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

__attribute__((used)) static int
FUNC12(struct vop_vptocnp_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode **dvp = ap->a_vpp;
	struct devfs_mount *dmp;
	char *buf = ap->a_buf;
	int *buflen = ap->a_buflen;
	struct devfs_dirent *dd, *de;
	int i, error;

	dmp = FUNC0(vp->v_mount);

	error = FUNC5(vp);
	if (error != 0)
		return (error);

	if (vp->v_type != VCHR && vp->v_type != VDIR) {
		error = ENOENT;
		goto finished;
	}

	dd = vp->v_data;
	if (vp->v_type == VDIR && dd == dmp->dm_rootdir) {
		*dvp = vp;
		FUNC11(*dvp);
		goto finished;
	}

	i = *buflen;
	i -= dd->de_dirent->d_namlen;
	if (i < 0) {
		error = ENOMEM;
		goto finished;
	}
	FUNC3(dd->de_dirent->d_name, buf + i, dd->de_dirent->d_namlen);
	*buflen = i;
	de = FUNC4(dd);
	if (de == NULL) {
		error = ENOENT;
		goto finished;
	}
	FUNC6(&devfs_de_interlock);
	*dvp = de->de_vnode;
	if (*dvp != NULL) {
		FUNC1(*dvp);
		FUNC7(&devfs_de_interlock);
		FUNC10(*dvp);
		FUNC2(*dvp);
		FUNC11(*dvp);
		FUNC9(*dvp);
	} else {
		FUNC7(&devfs_de_interlock);
		error = ENOENT;
	}
finished:
	FUNC8(&dmp->dm_lock);
	return (error);
}