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
struct ixl_vsi {int /*<<< orphan*/  seid; struct i40e_hw* hw; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
struct ifnet {int dummy; } ;
struct i40e_hw {int dummy; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int FALSE ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ MAX_MULTICAST_ADDR ; 
 int TRUE ; 
 int FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct ifnet*) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ixl_pf* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(if_ctx_t ctx, int flags)
{
	struct ixl_pf *pf = FUNC4(ctx);
	struct ixl_vsi *vsi = &pf->vsi;
	struct ifnet	*ifp = FUNC3(ctx);
	struct i40e_hw	*hw = vsi->hw;
	int		err;
	bool		uni = FALSE, multi = FALSE;

	if (flags & IFF_PROMISC)
		uni = multi = TRUE;
	else if (flags & IFF_ALLMULTI || FUNC2(ifp) >=
	    MAX_MULTICAST_ADDR)
		multi = TRUE;

	err = FUNC1(hw,
	    vsi->seid, uni, NULL, true);
	if (err)
		return (err);
	err = FUNC0(hw,
	    vsi->seid, multi, NULL);
	return (err);
}