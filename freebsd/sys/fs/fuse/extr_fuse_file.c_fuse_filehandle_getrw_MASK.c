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
struct ucred {int dummy; } ;
struct fuse_filehandle {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int FUNC0 (struct vnode*,int,struct fuse_filehandle**,struct ucred*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct vnode *vp, int fflag,
    struct fuse_filehandle **fufhp, struct ucred *cred, pid_t pid)
{
	int err;

	err = FUNC0(vp, fflag, fufhp, cred, pid);
	if (err)
		err = FUNC0(vp, FREAD | FWRITE, fufhp, cred, pid);
	return err;
}