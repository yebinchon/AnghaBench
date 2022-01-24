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
typedef  int u_short ;
struct nfslockfile {int /*<<< orphan*/  lf_fh; } ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NFSLCK_OPEN ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(vnode_t vp, u_short flags, struct nfslockfile *new_lfp,
    fhandle_t *nfhp, NFSPROC_T *p)
{
	fhandle_t *fhp = NULL;
	int error;

	/*
	 * For lock, use the new nfslock structure, otherwise just
	 * a fhandle_t on the stack.
	 */
	if (flags & NFSLCK_OPEN) {
		FUNC0(new_lfp != NULL, ("nfsrv_getlockfh: new_lfp NULL"));
		fhp = &new_lfp->lf_fh;
	} else if (nfhp) {
		fhp = nfhp;
	} else {
		FUNC3("nfsrv_getlockfh");
	}
	error = FUNC2(vp, fhp, p);
	FUNC1(error);
	return (error);
}