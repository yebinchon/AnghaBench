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
struct kinfo_file {int /*<<< orphan*/  kf_type; } ;
struct filedesc {int dummy; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;

/* Variables and functions */
 scalar_t__ DTYPE_FIFO ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  KF_TYPE_FIFO ; 
 int /*<<< orphan*/  KF_TYPE_VNODE ; 
 int FUNC2 (struct vnode*,struct kinfo_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

int
FUNC5(struct file *fp, struct kinfo_file *kif, struct filedesc *fdp)
{
	struct vnode *vp;
	int error;

	if (fp->f_type == DTYPE_FIFO)
		kif->kf_type = KF_TYPE_FIFO;
	else
		kif->kf_type = KF_TYPE_VNODE;
	vp = fp->f_vnode;
	FUNC3(vp);
	FUNC1(fdp);
	error = FUNC2(vp, kif);
	FUNC4(vp);
	FUNC0(fdp);
	return (error);
}