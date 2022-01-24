#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ixl_vsi {struct ifnet* ifp; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_allocated; } ;
struct TYPE_4__ {scalar_t__ seid; } ;
struct ixl_vf {int /*<<< orphan*/  ctx; TYPE_1__ qtag; TYPE_2__ vsi; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int num_vfs; scalar_t__ veb_seid; struct ixl_vf* vfs; scalar_t__ enable_vf_loopback; int /*<<< orphan*/  qmgr; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_IXL ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,scalar_t__,int /*<<< orphan*/ *) ; 
 struct ixl_pf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(if_ctx_t ctx)
{
	struct ixl_pf *pf = FUNC2(ctx);
	struct i40e_hw *hw;
	struct ixl_vsi *vsi;
	struct ifnet *ifp;
	struct ixl_vf *vfs;
	int i, num_vfs;

	hw = &pf->hw;
	vsi = &pf->vsi;
	ifp = vsi->ifp;

	for (i = 0; i < pf->num_vfs; i++) {
		if (pf->vfs[i].vsi.seid != 0)
			FUNC1(hw, pf->vfs[i].vsi.seid, NULL);
		FUNC7(&pf->qmgr, &pf->vfs[i].qtag);
		FUNC5(&pf->vfs[i].vsi);
		FUNC4(pf, "VF %d: %d released\n",
		    i, pf->vfs[i].qtag.num_allocated);
		FUNC4(pf, "Unallocated total: %d\n", FUNC6(&pf->qmgr));
	}

	if (pf->veb_seid != 0) {
		FUNC1(hw, pf->veb_seid, NULL);
		pf->veb_seid = 0;
	}
	/* Reset PF VSI loopback mode */
	if (pf->enable_vf_loopback)
		FUNC3(pf, false);

	vfs = pf->vfs;
	num_vfs = pf->num_vfs;

	pf->vfs = NULL;
	pf->num_vfs = 0;

	/* sysctl_ctx_free might sleep, but this func is called w/ an sx lock */
	for (i = 0; i < num_vfs; i++)
		FUNC8(&vfs[i].ctx);
	FUNC0(vfs, M_IXL);
}