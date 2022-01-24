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
struct vnode {scalar_t__ v_type; } ;
struct filedesc {int fd_lastfile; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 scalar_t__ VDIR ; 
 struct file* FUNC1 (struct filedesc*,int) ; 

__attribute__((used)) static int
FUNC2(struct filedesc *fdp)
{
	struct vnode *vp;
	struct file *fp;
	int fd;

	FUNC0(fdp);

	for (fd = 0; fd <= fdp->fd_lastfile; fd++) {
		fp = FUNC1(fdp, fd);
		if (fp == NULL)
			continue;
		if (fp->f_type == DTYPE_VNODE) {
			vp = fp->f_vnode;
			if (vp->v_type == VDIR)
				return (EPERM);
		}
	}
	return (0);
}