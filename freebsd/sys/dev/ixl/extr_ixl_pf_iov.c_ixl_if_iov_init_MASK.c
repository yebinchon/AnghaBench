#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct ixl_vsi {int /*<<< orphan*/  seid; int /*<<< orphan*/  uplink_seid; } ;
struct ixl_vf {int dummy; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct ixl_pf {int num_vfs; TYPE_2__* vfs; scalar_t__ enable_vf_loopback; int /*<<< orphan*/  veb_seid; struct ixl_vsi vsi; struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  M_IXL ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ixl_pf* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_pf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_vsi*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_vsi*) ; 
 TYPE_2__* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(if_ctx_t ctx, uint16_t num_vfs, const nvlist_t *params)
{
	struct ixl_pf *pf = FUNC6(ctx);
	device_t dev = FUNC5(ctx);
	struct i40e_hw *hw;
	struct ixl_vsi *pf_vsi;
	enum i40e_status_code ret;
	int i, error;

	hw = &pf->hw;
	pf_vsi = &pf->vsi;

	pf->vfs = FUNC10(sizeof(struct ixl_vf) * num_vfs, M_IXL, M_NOWAIT |
	    M_ZERO);
	if (pf->vfs == NULL) {
		error = ENOMEM;
		goto fail;
	}

	for (i = 0; i < num_vfs; i++)
		FUNC11(&pf->vfs[i].ctx);

	/*
	 * Add the VEB and ...
	 * - do nothing: VEPA mode
	 * - enable loopback mode on connected VSIs: VEB mode
	 */
	ret = FUNC2(hw, pf_vsi->uplink_seid, pf_vsi->seid,
	    1, FALSE, &pf->veb_seid, FALSE, NULL);
	if (ret != I40E_SUCCESS) {
		error = hw->aq.asq_last_status;
		FUNC0(dev, "i40e_aq_add_veb failed; status %s error %s",
		    FUNC4(hw, ret), FUNC3(hw, error));
		goto fail;
	}
	if (pf->enable_vf_loopback)
		FUNC7(pf, true);

	/*
	 * Adding a VEB brings back the default MAC filter(s). Remove them,
	 * and let the driver add the proper filters back.
	 */
	FUNC8(pf_vsi);
	FUNC9(pf_vsi);

	pf->num_vfs = num_vfs;
	return (0);

fail:
	FUNC1(pf->vfs, M_IXL);
	pf->vfs = NULL;
	return (error);
}