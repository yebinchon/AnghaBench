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
 int /*<<< orphan*/  FEXEC ; 
 int /*<<< orphan*/  FREAD ; 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ,struct fuse_filehandle**,struct ucred*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct vnode *vp, struct fuse_filehandle **fufhp,
	struct ucred *cred, pid_t pid)
{
	if (FUNC0(vp, FREAD, fufhp, cred, pid) == 0)
		return 0;
	return FUNC0(vp, FEXEC, fufhp, cred, pid);
}