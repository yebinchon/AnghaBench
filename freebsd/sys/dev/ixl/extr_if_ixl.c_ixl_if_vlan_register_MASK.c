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
typedef  int u16 ;
struct ixl_vsi {int /*<<< orphan*/  num_vlans; struct i40e_hw* hw; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct i40e_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 struct ixl_pf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_vsi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(if_ctx_t ctx, u16 vtag)
{
	struct ixl_pf *pf = FUNC0(ctx);
	struct ixl_vsi *vsi = &pf->vsi;
	struct i40e_hw	*hw = vsi->hw;

	if ((vtag == 0) || (vtag > 4095))	/* Invalid */
		return;

	++vsi->num_vlans;
	FUNC1(vsi, hw->mac.addr, vtag);
}