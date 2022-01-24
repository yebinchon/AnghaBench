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
struct TYPE_4__ {int advertised_speeds; scalar_t__ autoneg; } ;
struct TYPE_3__ {scalar_t__ forced_tx; scalar_t__ forced_rx; scalar_t__ autoneg; } ;
struct qlnx_link_output {int link_up; int supported_caps; int advertised_caps; int partner_adv_speed; int link_partner_caps; scalar_t__ partner_adv_pause; scalar_t__ an_complete; int /*<<< orphan*/  duplex; TYPE_2__ speed; scalar_t__ autoneg; TYPE_1__ pause; int /*<<< orphan*/  media_type; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_link_state {int link_up; int supported_caps; int advertised_caps; int partner_adv_speed; int link_partner_caps; scalar_t__ partner_adv_pause; scalar_t__ an_complete; int /*<<< orphan*/  duplex; TYPE_2__ speed; scalar_t__ autoneg; TYPE_1__ pause; int /*<<< orphan*/  media_type; } ;
struct ecore_mcp_link_params {int link_up; int supported_caps; int advertised_caps; int partner_adv_speed; int link_partner_caps; scalar_t__ partner_adv_pause; scalar_t__ an_complete; int /*<<< orphan*/  duplex; TYPE_2__ speed; scalar_t__ autoneg; TYPE_1__ pause; int /*<<< orphan*/  media_type; } ;
struct ecore_hwfn {scalar_t__ p_dev; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
typedef  int /*<<< orphan*/  link_state ;
typedef  int /*<<< orphan*/  link_params ;

/* Variables and functions */
 scalar_t__ ECORE_LINK_PARTNER_ASYMMETRIC_PAUSE ; 
 scalar_t__ ECORE_LINK_PARTNER_BOTH_PAUSE ; 
 int ECORE_LINK_PARTNER_SPEED_100G ; 
 int ECORE_LINK_PARTNER_SPEED_10G ; 
 int ECORE_LINK_PARTNER_SPEED_1G_FD ; 
 int ECORE_LINK_PARTNER_SPEED_1G_HD ; 
 int ECORE_LINK_PARTNER_SPEED_25G ; 
 int ECORE_LINK_PARTNER_SPEED_40G ; 
 int ECORE_LINK_PARTNER_SPEED_50G ; 
 int NVM_CFG1_PORT_DRV_LINK_SPEED_40G ; 
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G ; 
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G ; 
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G ; 
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G ; 
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G ; 
 int QLNX_LINK_CAP_100000baseKR4_Full ; 
 int QLNX_LINK_CAP_10000baseKR_Full ; 
 int QLNX_LINK_CAP_1000baseT_Full ; 
 int QLNX_LINK_CAP_1000baseT_Half ; 
 int QLNX_LINK_CAP_25000baseKR_Full ; 
 int QLNX_LINK_CAP_40000baseLR4_Full ; 
 int QLNX_LINK_CAP_50000baseKR2_Full ; 
 int QLNX_LINK_CAP_Asym_Pause ; 
 int QLNX_LINK_CAP_Autoneg ; 
 int QLNX_LINK_CAP_FIBRE ; 
 int QLNX_LINK_CAP_Pause ; 
 int /*<<< orphan*/  QLNX_LINK_DUPLEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ *) ; 
 struct ecore_ptt* FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct qlnx_link_output*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct qlnx_link_output*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct qlnx_link_output*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qlnx_link_output*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(qlnx_host_t *ha, struct ecore_hwfn *hwfn,
	struct qlnx_link_output *if_link)
{
	struct ecore_mcp_link_params    link_params;
	struct ecore_mcp_link_state     link_state;
	uint8_t				p_change;
	struct ecore_ptt *p_ptt = NULL;


	FUNC10(if_link, 0, sizeof(*if_link));
	FUNC10(&link_params, 0, sizeof(struct ecore_mcp_link_params));
	FUNC10(&link_state, 0, sizeof(struct ecore_mcp_link_state));

	ha = (qlnx_host_t *)hwfn->p_dev;

	/* Prepare source inputs */
	/* we only deal with physical functions */
	if (FUNC11(ha) != 0) {

        	p_ptt = FUNC4(hwfn);

	        if (p_ptt == NULL) {
			FUNC0(ha, "ecore_ptt_acquire failed\n");
			return;
		}

		FUNC3(hwfn, p_ptt, &if_link->media_type);
		FUNC5(hwfn, p_ptt);

		FUNC9(&link_params, FUNC1(hwfn),
			sizeof(link_params));
		FUNC9(&link_state, FUNC2(hwfn),
			sizeof(link_state));
	} else {
		FUNC3(hwfn, NULL, &if_link->media_type);
		FUNC8(hwfn, &p_change);
		FUNC6(hwfn, &link_params);
		FUNC7(hwfn, &link_state);
	}

	/* Set the link parameters to pass to protocol driver */
	if (link_state.link_up) {
		if_link->link_up = true;
		if_link->speed = link_state.speed;
	}

	if_link->supported_caps = QLNX_LINK_CAP_FIBRE;

	if (link_params.speed.autoneg)
		if_link->supported_caps |= QLNX_LINK_CAP_Autoneg;

	if (link_params.pause.autoneg ||
		(link_params.pause.forced_rx && link_params.pause.forced_tx))
		if_link->supported_caps |= QLNX_LINK_CAP_Asym_Pause;

	if (link_params.pause.autoneg || link_params.pause.forced_rx ||
		link_params.pause.forced_tx)
		if_link->supported_caps |= QLNX_LINK_CAP_Pause;

	if (link_params.speed.advertised_speeds &
		NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G)
		if_link->supported_caps |= QLNX_LINK_CAP_1000baseT_Half |
                                           QLNX_LINK_CAP_1000baseT_Full;

	if (link_params.speed.advertised_speeds &
		NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G)
		if_link->supported_caps |= QLNX_LINK_CAP_10000baseKR_Full;

	if (link_params.speed.advertised_speeds &
		NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G)
		if_link->supported_caps |= QLNX_LINK_CAP_25000baseKR_Full;

	if (link_params.speed.advertised_speeds &
		NVM_CFG1_PORT_DRV_LINK_SPEED_40G)
		if_link->supported_caps |= QLNX_LINK_CAP_40000baseLR4_Full;

	if (link_params.speed.advertised_speeds &
		NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G)
		if_link->supported_caps |= QLNX_LINK_CAP_50000baseKR2_Full;

	if (link_params.speed.advertised_speeds &
		NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G)
		if_link->supported_caps |= QLNX_LINK_CAP_100000baseKR4_Full;

	if_link->advertised_caps = if_link->supported_caps;

	if_link->autoneg = link_params.speed.autoneg;
	if_link->duplex = QLNX_LINK_DUPLEX;

	/* Link partner capabilities */

	if (link_state.partner_adv_speed & ECORE_LINK_PARTNER_SPEED_1G_HD)
		if_link->link_partner_caps |= QLNX_LINK_CAP_1000baseT_Half;

	if (link_state.partner_adv_speed & ECORE_LINK_PARTNER_SPEED_1G_FD)
		if_link->link_partner_caps |= QLNX_LINK_CAP_1000baseT_Full;

	if (link_state.partner_adv_speed & ECORE_LINK_PARTNER_SPEED_10G)
		if_link->link_partner_caps |= QLNX_LINK_CAP_10000baseKR_Full;

	if (link_state.partner_adv_speed & ECORE_LINK_PARTNER_SPEED_25G)
		if_link->link_partner_caps |= QLNX_LINK_CAP_25000baseKR_Full;

	if (link_state.partner_adv_speed & ECORE_LINK_PARTNER_SPEED_40G)
		if_link->link_partner_caps |= QLNX_LINK_CAP_40000baseLR4_Full;

	if (link_state.partner_adv_speed & ECORE_LINK_PARTNER_SPEED_50G)
		if_link->link_partner_caps |= QLNX_LINK_CAP_50000baseKR2_Full;

	if (link_state.partner_adv_speed & ECORE_LINK_PARTNER_SPEED_100G)
		if_link->link_partner_caps |= QLNX_LINK_CAP_100000baseKR4_Full;

	if (link_state.an_complete)
		if_link->link_partner_caps |= QLNX_LINK_CAP_Autoneg;

	if (link_state.partner_adv_pause)
		if_link->link_partner_caps |= QLNX_LINK_CAP_Pause;

	if ((link_state.partner_adv_pause ==
		ECORE_LINK_PARTNER_ASYMMETRIC_PAUSE) ||
		(link_state.partner_adv_pause ==
			ECORE_LINK_PARTNER_BOTH_PAUSE))
		if_link->link_partner_caps |= QLNX_LINK_CAP_Asym_Pause;

	return;
}