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
struct vnode {scalar_t__ v_type; scalar_t__ v_mount; } ;
struct ucred {int dummy; } ;
struct dirtemplate {int dotdot_type; int dotdot_namlen; char* dotdot_name; int /*<<< orphan*/  dotdot_ino; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int ENOTDIR ; 
 int IO_NODELOCKED ; 
 int IO_NOMACCHECK ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  NOCRED ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 scalar_t__ VDIR ; 
 TYPE_1__* FUNC3 (struct vnode*) ; 
 struct vnode* FUNC4 (struct vnode*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ucred*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct vnode *vp, struct ucred *cred, ino_t *dd_ino,
    struct vnode **dd_vp)
{
	struct dirtemplate dirbuf;
	struct vnode *ddvp;
	int error, namlen;

	FUNC0(vp, "ufs_dir_dd_ino");
	*dd_vp = NULL;
	if (vp->v_type != VDIR)
		return (ENOTDIR);
	/*
	 * First check to see if we have it in the name cache.
	 */
	if ((ddvp = FUNC4(vp)) != NULL) {
		FUNC1(ddvp->v_mount == vp->v_mount,
		    ("ufs_dir_dd_ino: Unexpected mount point crossing"));
		*dd_ino = FUNC3(ddvp)->i_number;
		*dd_vp = ddvp;
		return (0);
	}
	/*
	 * Have to read the directory.
	 */
	error = FUNC5(UIO_READ, vp, (caddr_t)&dirbuf,
	    sizeof (struct dirtemplate), (off_t)0, UIO_SYSSPACE,
	    IO_NODELOCKED | IO_NOMACCHECK, cred, NOCRED, NULL, NULL);
	if (error != 0)
		return (error);
#if (BYTE_ORDER == LITTLE_ENDIAN)
	if (FUNC2(vp))
		namlen = dirbuf.dotdot_type;
	else
		namlen = dirbuf.dotdot_namlen;
#else
	namlen = dirbuf.dotdot_namlen;
#endif
	if (namlen != 2 || dirbuf.dotdot_name[0] != '.' ||
	    dirbuf.dotdot_name[1] != '.')
		return (ENOTDIR);
	*dd_ino = dirbuf.dotdot_ino;
	return (0);
}