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
struct ixl_vsi {int /*<<< orphan*/  media; } ;
struct i40e_hw {int dummy; } ;
struct iavf_sc {int /*<<< orphan*/  vf_res; struct i40e_hw hw; int /*<<< orphan*/  dev; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_IAVF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC7 (struct iavf_sc*) ; 
 struct iavf_sc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(if_ctx_t ctx)
{
	struct iavf_sc *sc = FUNC8(ctx);
	struct ixl_vsi *vsi = &sc->vsi;
	struct i40e_hw *hw = &sc->hw;
	device_t dev = sc->dev;
	enum i40e_status_code status;

	FUNC0(dev, "begin");

	/* Remove all the media and link information */
	FUNC9(vsi->media);

	FUNC5(hw);
	status = FUNC3(&sc->hw);
	if (status != I40E_SUCCESS) {
		FUNC1(dev,
		    "i40e_shutdown_adminq() failed with status %s\n",
		    FUNC4(hw, status));
	}

	FUNC2(sc->vf_res, M_IAVF);
	FUNC7(sc);
	FUNC6(sc);

	FUNC0(dev, "end");
	return (0);
}