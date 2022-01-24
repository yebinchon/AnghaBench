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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_size; } ;
struct fuse_vnode_data {int flag; TYPE_1__ cached_attrs; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int FN_SIZECHANGE ; 
 scalar_t__ VNOVAL ; 
 struct fuse_vnode_data* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct vnode*) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ *,struct ucred*,struct thread*) ; 

int
FUNC3(struct vnode *vp, off_t *filesize, struct ucred *cred,
	struct thread *td)
{
	struct fuse_vnode_data *fvdat = FUNC0(vp);
	int error = 0;

	if (!(fvdat->flag & FN_SIZECHANGE) &&
		(FUNC1(vp) == NULL || fvdat->cached_attrs.va_size == VNOVAL)) 
		error = FUNC2(vp, NULL, cred, td);

	if (!error)
		*filesize = fvdat->cached_attrs.va_size;

	return error;
}