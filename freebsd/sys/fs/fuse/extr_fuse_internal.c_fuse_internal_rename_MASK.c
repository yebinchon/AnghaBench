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
struct fuse_rename_in {int /*<<< orphan*/  newdir; } ;
struct fuse_dispatcher {struct fuse_rename_in* indata; } ;
struct componentname {int cn_namelen; int /*<<< orphan*/  cn_nameptr; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_RENAME ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct vnode *fdvp,
    struct componentname *fcnp,
    struct vnode *tdvp,
    struct componentname *tcnp)
{
	struct fuse_dispatcher fdi;
	struct fuse_rename_in *fri;
	int err = 0;

	FUNC2(&fdi, sizeof(*fri) + fcnp->cn_namelen + tcnp->cn_namelen + 2);
	FUNC3(&fdi, FUSE_RENAME, fdvp, tcnp->cn_thread, tcnp->cn_cred);

	fri = fdi.indata;
	fri->newdir = FUNC0(tdvp);
	FUNC5((char *)fdi.indata + sizeof(*fri), fcnp->cn_nameptr,
	    fcnp->cn_namelen);
	((char *)fdi.indata)[sizeof(*fri) + fcnp->cn_namelen] = '\0';
	FUNC5((char *)fdi.indata + sizeof(*fri) + fcnp->cn_namelen + 1,
	    tcnp->cn_nameptr, tcnp->cn_namelen);
	((char *)fdi.indata)[sizeof(*fri) + fcnp->cn_namelen +
	    tcnp->cn_namelen + 1] = '\0';

	err = FUNC4(&fdi);
	FUNC1(&fdi);
	return err;
}