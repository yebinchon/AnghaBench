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
typedef  int /*<<< orphan*/  vnode_t ;
struct vattr {int /*<<< orphan*/  va_mode; int /*<<< orphan*/  va_type; scalar_t__ va_size; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; } ;
struct ucred {int dummy; } ;
struct pnfsdsfile {int /*<<< orphan*/  dsf_filename; } ;
struct nfsdevice {int dummy; } ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,struct pnfsdsfile*) ; 
 int /*<<< orphan*/  FUNC1 (struct vattr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  VREG ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vattr*,struct vattr*,int /*<<< orphan*/ *,struct pnfsdsfile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(vnode_t vp, fhandle_t *fhp, struct pnfsdsfile *pf,
    vnode_t dvp, struct nfsdevice *ds, struct ucred *cred, NFSPROC_T *p,
    vnode_t *tvpp)
{
	struct vattr va, nva;
	int error;

	/* Make data file name based on FH. */
	error = FUNC2(vp, &va, cred);
	if (error == 0) {
		/* Set the attributes for "vp" to Setattr the DS vp. */
		FUNC1(&nva);
		nva.va_uid = va.va_uid;
		nva.va_gid = va.va_gid;
		nva.va_mode = va.va_mode;
		nva.va_size = 0;
		FUNC1(&va);
		va.va_type = VREG;
		va.va_mode = nva.va_mode;
		FUNC0(4, "nfsrv_dscreatefile: dvp=%p pf=%p\n", dvp, pf);
		error = FUNC3(dvp, &va, &nva, fhp, pf, NULL,
		    pf->dsf_filename, cred, p, tvpp);
	}
	return (error);
}