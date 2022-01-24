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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct ixl_vsi {int /*<<< orphan*/  vsi_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ mac; } ;
struct ixl_pf {int /*<<< orphan*/  dev; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct i40e_aqc_get_set_rss_key_data {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ I40E_MAC_X722 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXL_RSS_KEY_SIZE_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct i40e_aqc_get_set_rss_key_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,struct i40e_aqc_get_set_rss_key_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	struct ixl_vsi *vsi = &pf->vsi;
	device_t	dev = pf->dev;
	u32 rss_seed[IXL_RSS_KEY_SIZE_REG];
	enum i40e_status_code status;

#ifdef RSS
        /* Fetch the configured RSS key */
        rss_getkey((uint8_t *) &rss_seed);
#else
	FUNC7(rss_seed);
#endif
	/* Fill out hash function seed */
	if (hw->mac.type == I40E_MAC_X722) {
		struct i40e_aqc_get_set_rss_key_data key_data;
		FUNC1(rss_seed, &key_data, 52);
		status = FUNC3(hw, vsi->vsi_num, &key_data);
		if (status)
			FUNC2(dev,
			    "i40e_aq_set_rss_key status %s, error %s\n",
			    FUNC5(hw, status),
			    FUNC4(hw, hw->aq.asq_last_status));
	} else {
		for (int i = 0; i < IXL_RSS_KEY_SIZE_REG; i++)
			FUNC6(hw, FUNC0(i), rss_seed[i]);
	}
}