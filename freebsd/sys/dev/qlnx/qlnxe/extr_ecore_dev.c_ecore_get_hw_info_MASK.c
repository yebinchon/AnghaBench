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
typedef  int u8 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ ovlan; int personality; int num_active_tc; int /*<<< orphan*/  mtu; int /*<<< orphan*/  num_hw_tc; int /*<<< orphan*/ * hw_mac_addr; } ;
struct ecore_hwfn {TYPE_3__* mcp_info; TYPE_1__ hw_info; int /*<<< orphan*/  rel_pf_id; int /*<<< orphan*/  p_dev; int /*<<< orphan*/  abs_pf_id; } ;
struct ecore_hw_prepare_params {int drv_resc_alloc; int /*<<< orphan*/  p_relaxed_res; scalar_t__ b_relaxed_probe; } ;
typedef  enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {int* mac; scalar_t__ ovlan; int protocol; int /*<<< orphan*/  mtu; } ;
struct TYPE_6__ {TYPE_2__ func_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_HW_PREPARE_BAD_IGU ; 
 int /*<<< orphan*/  ECORE_HW_PREPARE_BAD_IOV ; 
 int /*<<< orphan*/  ECORE_HW_PREPARE_BAD_MCP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECORE_MCP_VLAN_UNSET ; 
 int ECORE_PCI_DEFAULT ; 
 int ECORE_PCI_ETH ; 
 int ECORE_PCI_ETH_ROCE ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  NUM_PHYS_TCS_4PORT_K2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_hw_prepare_params*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC10 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC12 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC13 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 scalar_t__ FUNC14 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC15 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC16(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
		  enum ecore_pci_personality personality,
		  struct ecore_hw_prepare_params *p_params)
{
	bool drv_resc_alloc = p_params->drv_resc_alloc;
	enum _ecore_status_t rc;

	/* Since all information is common, only first hwfns should do this */
	if (FUNC3(p_hwfn)) {
		rc = FUNC10(p_hwfn);
		if (rc != ECORE_SUCCESS) {
			if (p_params->b_relaxed_probe)
				p_params->p_relaxed_res =
						ECORE_HW_PREPARE_BAD_IOV;
			else
				return rc;
		}
	}

	if (FUNC3(p_hwfn))
		FUNC8(p_hwfn, p_ptt);

	FUNC12(p_hwfn, p_ptt);

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev)) {
#endif
	rc = FUNC6(p_hwfn, p_ptt, p_params);
	if (rc != ECORE_SUCCESS)
		return rc;
#ifndef ASIC_ONLY
	}
#endif

	rc = FUNC9(p_hwfn, p_ptt);
	if (rc != ECORE_SUCCESS) {
		if (p_params->b_relaxed_probe)
			p_params->p_relaxed_res = ECORE_HW_PREPARE_BAD_IGU;
		else
			return rc;
	}

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev) && FUNC14(p_hwfn)) {
#endif
	FUNC4(p_hwfn->hw_info.hw_mac_addr,
		    p_hwfn->mcp_info->func_info.mac, ETH_ALEN);
#ifndef ASIC_ONLY
	} else {
		static u8 mcp_hw_mac[6] = {0, 2, 3, 4, 5, 6};

		FUNC4(p_hwfn->hw_info.hw_mac_addr, mcp_hw_mac, ETH_ALEN);
		p_hwfn->hw_info.hw_mac_addr[5] = p_hwfn->abs_pf_id;
	}
#endif

	if (FUNC14(p_hwfn)) {
		if (p_hwfn->mcp_info->func_info.ovlan != ECORE_MCP_VLAN_UNSET)
			p_hwfn->hw_info.ovlan =
				p_hwfn->mcp_info->func_info.ovlan;

		FUNC11(p_hwfn, p_ptt);

		FUNC13(p_hwfn, p_ptt);

		FUNC15(p_hwfn, p_ptt);
	}

	if (personality != ECORE_PCI_DEFAULT) {
		p_hwfn->hw_info.personality = personality;
	} else if (FUNC14(p_hwfn)) {
		enum ecore_pci_personality protocol;

		protocol = p_hwfn->mcp_info->func_info.protocol;
		p_hwfn->hw_info.personality = protocol;
	}

#ifndef ASIC_ONLY
	/* To overcome ILT lack for emulation, until at least until we'll have
	 * a definite answer from system about it, allow only PF0 to be RoCE.
	 */
	if (FUNC1(p_hwfn->p_dev) && FUNC2(p_hwfn->p_dev)) {
		if (!p_hwfn->rel_pf_id)
			p_hwfn->hw_info.personality = ECORE_PCI_ETH_ROCE;
		else
			p_hwfn->hw_info.personality = ECORE_PCI_ETH;
	}
#endif

	/* although in BB some constellations may support more than 4 tcs,
	 * that can result in performance penalty in some cases. 4
	 * represents a good tradeoff between performance and flexibility.
	 */
	p_hwfn->hw_info.num_hw_tc = NUM_PHYS_TCS_4PORT_K2;

	/* start out with a single active tc. This can be increased either
	 * by dcbx negotiation or by upper layer driver
	 */
	p_hwfn->hw_info.num_active_tc = 1;

	FUNC5(p_hwfn, p_ptt);

	if (FUNC14(p_hwfn))
		p_hwfn->hw_info.mtu = p_hwfn->mcp_info->func_info.mtu;

	/* In case of forcing the driver's default resource allocation, calling
	 * ecore_hw_get_resc() should come after initializing the personality
	 * and after getting the number of functions, since the calculation of
	 * the resources/features depends on them.
	 * This order is not harmful if not forcing.
	 */
	rc = FUNC7(p_hwfn, p_ptt, drv_resc_alloc);
	if (rc != ECORE_SUCCESS && p_params->b_relaxed_probe) {
		rc = ECORE_SUCCESS;
		p_params->p_relaxed_res = ECORE_HW_PREPARE_BAD_MCP;
	}

	return rc;
}