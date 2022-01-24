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
struct ixl_vsi {int /*<<< orphan*/  seid; struct i40e_hw* hw; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;
struct i40e_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IXL_FILTER_ADD ; 
 int IXL_FILTER_MC ; 
 int IXL_FILTER_USED ; 
 int MAX_MULTICAST_ADDR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ifnet*,int /*<<< orphan*/ ,struct ixl_vsi*) ; 
 int FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_vsi*,int,int) ; 
 int /*<<< orphan*/  ixl_add_maddr ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_vsi*,int) ; 

void
FUNC7(struct ixl_vsi *vsi)
{
	struct ifnet		*ifp = vsi->ifp;
	struct i40e_hw		*hw = vsi->hw;
	int			mcnt = 0, flags;

	FUNC0("ixl_add_multi: begin");

	/*
	** First just get a count, to decide if we
	** we simply use multicast promiscuous.
	*/
	mcnt = FUNC4(ifp);
	if (FUNC1(mcnt >= MAX_MULTICAST_ADDR)) {
		/* delete existing MC filters */
		FUNC6(vsi, mcnt);
		FUNC2(hw,
		    vsi->seid, TRUE, NULL);
		return;
	}

	mcnt = FUNC3(ifp, ixl_add_maddr, vsi);
	if (mcnt > 0) {
		flags = (IXL_FILTER_ADD | IXL_FILTER_USED | IXL_FILTER_MC);
		FUNC5(vsi, flags, mcnt);
	}

	FUNC0("ixl_add_multi: end");
}