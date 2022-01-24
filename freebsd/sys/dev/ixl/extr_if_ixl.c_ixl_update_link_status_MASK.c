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
typedef  int /*<<< orphan*/  u64 ;
struct ixl_vsi {scalar_t__ link_active; int /*<<< orphan*/  ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  link_speed; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct i40e_hw {TYPE_2__ phy; } ;
struct ixl_pf {scalar_t__ link_up; struct i40e_hw hw; struct ixl_vsi vsi; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct ixl_pf *pf)
{
	struct ixl_vsi *vsi = &pf->vsi;
	struct i40e_hw *hw = &pf->hw;
	u64 baudrate;

	if (pf->link_up) { 
		if (vsi->link_active == FALSE) {
			vsi->link_active = TRUE;
			baudrate = FUNC3(hw->phy.link_info.link_speed);
			FUNC0(vsi->ctx, LINK_STATE_UP, baudrate);
			FUNC2(pf);
#ifdef PCI_IOV
			ixl_broadcast_link_state(pf);
#endif
      
		}
	} else { /* Link down */
		if (vsi->link_active == TRUE) {
			vsi->link_active = FALSE;
			FUNC0(vsi->ctx, LINK_STATE_DOWN, 0);
#ifdef PCI_IOV
			ixl_broadcast_link_state(pf);
#endif
		}
	}
}