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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  rel_pf_id; TYPE_1__* p_dev; } ;
struct ecore_arfs_config_params {scalar_t__ mode; scalar_t__ ipv6; scalar_t__ ipv4; scalar_t__ udp; scalar_t__ tcp; } ;
struct TYPE_2__ {int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ECORE_FILTER_CONFIG_MODE_DISABLE ; 
 int /*<<< orphan*/  ECORE_MF_DISABLE_ARFS ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

void FUNC5(struct ecore_hwfn *p_hwfn,
			       struct ecore_ptt *p_ptt,
			       struct ecore_arfs_config_params *p_cfg_params)
{
	if (FUNC1(ECORE_MF_DISABLE_ARFS, &p_hwfn->p_dev->mf_bits))
		return;

	if (p_cfg_params->mode != ECORE_FILTER_CONFIG_MODE_DISABLE) {
		FUNC3(p_hwfn, p_ptt, p_hwfn->rel_pf_id,
				 p_cfg_params->tcp,
				 p_cfg_params->udp,
				 p_cfg_params->ipv4,
				 p_cfg_params->ipv6,
				 FUNC2(p_cfg_params->mode));
		FUNC0(p_hwfn, ECORE_MSG_SP,
			   "Configured Filtering: tcp = %s, udp = %s, ipv4 = %s, ipv6 =%s mode=%08x\n",
			   p_cfg_params->tcp ? "Enable" : "Disable",
			   p_cfg_params->udp ? "Enable" : "Disable",
			   p_cfg_params->ipv4 ? "Enable" : "Disable",
			   p_cfg_params->ipv6 ? "Enable" : "Disable",
			   (u32)p_cfg_params->mode);
	} else {
		FUNC0(p_hwfn, ECORE_MSG_SP, "Disabled Filtering\n");
		FUNC4(p_hwfn, p_ptt, p_hwfn->rel_pf_id);
	}
}