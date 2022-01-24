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
struct vop_symlink_args {char* a_target; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct fuse_dispatcher {char* indata; } ;
struct componentname {size_t cn_namelen; char const* cn_nameptr; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUSE_SYMLINK ; 
 int /*<<< orphan*/  VLNK ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vnode*,struct vnode**,struct componentname*,int /*<<< orphan*/ ,struct fuse_dispatcher*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(struct vop_symlink_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct vnode **vpp = ap->a_vpp;
	struct componentname *cnp = ap->a_cnp;
	const char *target = ap->a_target;

	struct fuse_dispatcher fdi;

	int err;
	size_t len;

	if (FUNC4(dvp)) {
		return ENXIO;
	}
	/*
	 * Unlike the other creator type calls, here we have to create a message
	 * where the name of the new entry comes first, and the data describing
	 * the entry comes second.
	 * Hence we can't rely on our handy fuse_internal_newentry() routine,
	 * but put together the message manually and just call the core part.
	 */

	len = FUNC6(target) + 1;
	FUNC1(&fdi, len + cnp->cn_namelen + 1);
	FUNC2(&fdi, FUSE_SYMLINK, dvp, curthread, NULL);

	FUNC5(fdi.indata, cnp->cn_nameptr, cnp->cn_namelen);
	((char *)fdi.indata)[cnp->cn_namelen] = '\0';
	FUNC5((char *)fdi.indata + cnp->cn_namelen + 1, target, len);

	err = FUNC3(dvp, vpp, cnp, VLNK, &fdi);
	FUNC0(&fdi);
	return err;
}