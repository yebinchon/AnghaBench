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
struct vattr {int va_mode; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_data {int dataflags; } ;
typedef  int mode_t ;

/* Variables and functions */
 int FSESS_DEFAULT_PERMISSIONS ; 
 int /*<<< orphan*/  PRIV_VFS_RETAINSUGID ; 
 int S_ISGID ; 
 int S_ISUID ; 
 struct fuse_data* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,struct vattr*,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,struct vattr*,struct thread*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vattr*) ; 
 struct mount* FUNC5 (struct vnode*) ; 

__attribute__((used)) static void
FUNC6(struct vnode *vp, struct ucred *cred,
	struct thread *td)
{
	struct fuse_data *data;
	struct mount *mp;
	struct vattr va;
	int dataflags;

	mp = FUNC5(vp);
	data = FUNC0(mp);
	dataflags = data->dataflags;

	if (dataflags & FSESS_DEFAULT_PERMISSIONS) {
		if (FUNC3(cred, PRIV_VFS_RETAINSUGID)) {
			FUNC1(vp, &va, cred, td);
			if (va.va_mode & (S_ISUID | S_ISGID)) {
				mode_t mode = va.va_mode & ~(S_ISUID | S_ISGID);
				/* Clear all vattr fields except mode */
				FUNC4(&va);
				va.va_mode = mode;

				/*
				 * Ignore fuse_internal_setattr's return value,
				 * because at this point the write operation has
				 * already succeeded and we don't want to return
				 * failing status for that.
				 */
				(void)FUNC2(vp, &va, td, NULL);
			}
		}
	}
}