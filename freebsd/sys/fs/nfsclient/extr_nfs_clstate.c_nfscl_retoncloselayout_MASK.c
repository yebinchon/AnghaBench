#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nfsclrecalllayout {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  seqid; } ;
struct nfscllayout {int nfsly_flags; TYPE_1__ nfsly_stateid; int /*<<< orphan*/  nfsly_flayrw; int /*<<< orphan*/  nfsly_flayread; } ;
struct nfsclclient {int dummy; } ;
struct TYPE_9__ {int n_flag; } ;
struct TYPE_8__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFSLAYOUTIOMODE_READ ; 
 int /*<<< orphan*/  NFSLAYOUTIOMODE_RW ; 
 int /*<<< orphan*/  NFSLAYOUTRETURN_FILE ; 
 int NFSLY_RECALL ; 
 int NFSLY_RETONCLOSE ; 
 int NNOLAYOUT ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 TYPE_5__* FUNC4 (TYPE_2__*) ; 
 scalar_t__ nfs_numnfscbd ; 
 scalar_t__ nfscl_enablecallb ; 
 struct nfscllayout* FUNC5 (struct nfsclclient*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct nfscllayout*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsclrecalllayout*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(vnode_t vp, struct nfsclclient *clp, uint8_t *fhp,
    int fhlen, struct nfsclrecalllayout **recallpp)
{
	struct nfscllayout *lyp;
	uint32_t iomode;

	if (vp->v_type != VREG || !FUNC2(FUNC3(FUNC7(vp))) ||
	    nfscl_enablecallb == 0 || nfs_numnfscbd == 0 ||
	    (FUNC4(vp)->n_flag & NNOLAYOUT) != 0)
		return;
	lyp = FUNC5(clp, fhp, fhlen);
	if (lyp != NULL && (lyp->nfsly_flags & (NFSLY_RETONCLOSE |
	    NFSLY_RECALL)) == NFSLY_RETONCLOSE) {
		iomode = 0;
		if (!FUNC0(&lyp->nfsly_flayread))
			iomode |= NFSLAYOUTIOMODE_READ;
		if (!FUNC0(&lyp->nfsly_flayrw))
			iomode |= NFSLAYOUTIOMODE_RW;
		(void)FUNC6(NFSLAYOUTRETURN_FILE, lyp, iomode,
		    0, UINT64_MAX, lyp->nfsly_stateid.seqid, 0, 0, NULL,
		    *recallpp);
		FUNC1(4, "retoncls recall iomode=%d\n", iomode);
		*recallpp = NULL;
	}
}