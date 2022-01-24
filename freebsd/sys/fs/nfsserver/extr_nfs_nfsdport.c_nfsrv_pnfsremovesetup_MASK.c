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
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct vattr {int va_nlink; } ;
struct ucred {int dummy; } ;
typedef  int /*<<< orphan*/  fhandle_t ;
struct TYPE_2__ {int mnt_flag; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int MNT_EXPORTED ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 int FUNC1 (struct vnode*,struct vattr*,struct ucred*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ucred* FUNC4 () ; 
 scalar_t__ nfsrv_devidcnt ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ,char*,int*,int*,int /*<<< orphan*/ *,struct vnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void
FUNC8(struct vnode *vp, NFSPROC_T *p, struct vnode **dvpp,
    int *mirrorcntp, char *fname, fhandle_t *fhp)
{
	struct vattr va;
	struct ucred *tcred;
	char *buf;
	int buflen, error;

	dvpp[0] = NULL;
	/* If not an exported regular file or not a pNFS server, just return. */
	if (vp->v_type != VREG || (vp->v_mount->mnt_flag & MNT_EXPORTED) == 0 ||
	    nfsrv_devidcnt == 0)
		return;

	/* Check to see if this is the last hard link. */
	tcred = FUNC4();
	error = FUNC1(vp, &va, tcred);
	FUNC0(tcred);
	if (error != 0) {
		FUNC7("pNFS: nfsrv_pnfsremovesetup getattr=%d\n", error);
		return;
	}
	if (va.va_nlink > 1)
		return;

	error = FUNC6(vp, fhp, p);
	if (error != 0) {
		FUNC7("pNFS: nfsrv_pnfsremovesetup getfh=%d\n", error);
		return;
	}

	buflen = 1024;
	buf = FUNC3(buflen, M_TEMP, M_WAITOK);
	/* Get the directory vnode for the DS mount and the file handle. */
	error = FUNC5(vp, 0, buf, &buflen, mirrorcntp, p, dvpp,
	    NULL, NULL, fname, NULL, NULL, NULL, NULL, NULL);
	FUNC2(buf, M_TEMP);
	if (error != 0)
		FUNC7("pNFS: nfsrv_pnfsremovesetup getsockmnt=%d\n", error);
}