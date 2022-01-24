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
struct mount {int dummy; } ;
struct fuse_dispatcher {int dummy; } ;
struct componentname {int dummy; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct vnode**,struct componentname*,int,struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int /*<<< orphan*/ ,struct componentname*,int,void*,size_t,struct fuse_dispatcher*) ; 
 struct mount* FUNC5 (struct vnode*) ; 

int
FUNC6(struct vnode *dvp,
    struct vnode **vpp,
    struct componentname *cnp,
    enum fuse_opcode op,
    void *buf,
    size_t bufsize,
    enum vtype vtype)
{
	int err;
	struct fuse_dispatcher fdi;
	struct mount *mp = FUNC5(dvp);

	FUNC2(&fdi, 0);
	FUNC4(mp, FUNC0(dvp), cnp, op, buf,
	    bufsize, &fdi);
	err = FUNC3(dvp, vpp, cnp, vtype, &fdi);
	FUNC1(&fdi);

	return err;
}