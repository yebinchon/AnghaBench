#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ixl_vsi {int /*<<< orphan*/  media; TYPE_1__* shared; int /*<<< orphan*/  ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  phy_types; } ;
struct TYPE_5__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_3__ phy; TYPE_2__ aq; } ;
struct ixl_pf {int /*<<< orphan*/  supported_speeds; struct i40e_hw hw; struct ixl_vsi vsi; } ;
struct ifnet {scalar_t__ if_mtu; } ;
struct i40e_aq_get_phy_abilities_resp {int /*<<< orphan*/  link_speed; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ isc_max_frame_size; } ;

/* Variables and functions */
 scalar_t__ ETHER_CRC_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int /*<<< orphan*/  FALSE ; 
 int I40E_ERR_UNKNOWN_PHY ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i40e_aq_get_phy_abilities_resp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(device_t dev, struct ixl_pf *pf)
{
	struct ixl_vsi *vsi = &pf->vsi;
	if_ctx_t ctx = vsi->ctx;
	struct i40e_hw *hw = &pf->hw;
	struct ifnet *ifp = FUNC6(ctx);
	struct i40e_aq_get_phy_abilities_resp abilities;
	enum i40e_status_code aq_error = 0;

	FUNC0(dev, "begin");

	vsi->shared->isc_max_frame_size =
	    ifp->if_mtu + ETHER_HDR_LEN + ETHER_CRC_LEN
	    + ETHER_VLAN_ENCAP_LEN;

	aq_error = FUNC2(hw,
	    FALSE, TRUE, &abilities, NULL);
	/* May need delay to detect fiber correctly */
	if (aq_error == I40E_ERR_UNKNOWN_PHY) {
		/* TODO: Maybe just retry this in a task... */
		FUNC3(200);
		aq_error = FUNC2(hw, FALSE,
		    TRUE, &abilities, NULL);
	}
	if (aq_error) {
		if (aq_error == I40E_ERR_UNKNOWN_PHY)
			FUNC1(dev, "Unknown PHY type detected!\n");
		else
			FUNC1(dev,
			    "Error getting supported media types, err %d,"
			    " AQ error %d\n", aq_error, hw->aq.asq_last_status);
	} else {
		pf->supported_speeds = abilities.link_speed;
#if __FreeBSD_version >= 1100000
		if_setbaudrate(ifp, ixl_max_aq_speed_to_value(pf->supported_speeds));
#else
		FUNC4(ifp, FUNC10(pf->supported_speeds));
#endif

		FUNC9(vsi, hw->phy.phy_types);
	}

	/* Use autoselect media by default */
	FUNC7(vsi->media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC8(vsi->media, IFM_ETHER | IFM_AUTO);

	return (0);
}