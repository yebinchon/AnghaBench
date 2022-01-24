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
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_data {int dataflags; } ;
typedef  int /*<<< orphan*/  accmode_t ;

/* Variables and functions */
 int EPERM ; 
#define  EXTATTR_NAMESPACE_SYSTEM 129 
#define  EXTATTR_NAMESPACE_USER 128 
 int FSESS_DEFAULT_PERMISSIONS ; 
 struct ucred* NOCRED ; 
 int /*<<< orphan*/  PRIV_VFS_EXTATTR_SYSTEM ; 
 struct fuse_data* FUNC0 (struct mount*) ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,struct thread*,struct ucred*) ; 
 int FUNC2 (struct ucred*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC3 (struct vnode*) ; 

__attribute__((used)) static int
FUNC4(struct vnode *vp, int ns, struct ucred *cred,
	struct thread *td, accmode_t accmode)
{
	struct mount *mp = FUNC3(vp);
	struct fuse_data *data = FUNC0(mp);

	/*
	 * Kernel-invoked always succeeds.
	 */
	if (cred == NOCRED)
		return (0);

	/*
	 * Do not allow privileged processes in jail to directly manipulate
	 * system attributes.
	 */
	switch (ns) {
	case EXTATTR_NAMESPACE_SYSTEM:
		if (data->dataflags & FSESS_DEFAULT_PERMISSIONS) {
			return (FUNC2(cred, PRIV_VFS_EXTATTR_SYSTEM));
		}
		/* FALLTHROUGH */
	case EXTATTR_NAMESPACE_USER:
		return (FUNC1(vp, accmode, td, cred));
	default:
		return (EPERM);
	}
}