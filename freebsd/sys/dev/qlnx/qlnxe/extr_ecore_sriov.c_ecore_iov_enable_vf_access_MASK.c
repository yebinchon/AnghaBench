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
typedef  int /*<<< orphan*/  u16 ;
struct ecore_vf_info {int b_malicious; int /*<<< orphan*/  state; int /*<<< orphan*/  abs_vf_id; scalar_t__ concrete_fid; int /*<<< orphan*/  num_sbs; scalar_t__ to_disable; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {scalar_t__ concrete_fid; int /*<<< orphan*/  hw_mode; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int /*<<< orphan*/  rel_pf_id; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_IOV ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_vf_info*) ; 
 int /*<<< orphan*/  IGU_REG_VF_CONFIGURATION_RT_OFFSET ; 
 int /*<<< orphan*/  IGU_VF_CONF_FUNC_EN ; 
 int /*<<< orphan*/  IGU_VF_CONF_PARENT ; 
 int /*<<< orphan*/  PHASE_VF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VF_FREE ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC9(struct ecore_hwfn *p_hwfn,
						       struct ecore_ptt *p_ptt,
						       struct ecore_vf_info *vf)
{
	u32 igu_vf_conf = IGU_VF_CONF_FUNC_EN;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	/* It's possible VF was previously considered malicious -
	 * clear the indication even if we're only going to disable VF.
	 */
	vf->b_malicious = false;

	if (vf->to_disable)
		return ECORE_SUCCESS;

	FUNC0(p_hwfn, ECORE_MSG_IOV, "Enable internal access for vf %x [abs %x]\n",
		   vf->abs_vf_id, FUNC1(p_hwfn, vf));

	FUNC8(p_hwfn, p_ptt,
				     FUNC1(p_hwfn, vf));

	FUNC7(p_hwfn, p_ptt, vf);

	rc = FUNC6(p_hwfn, p_ptt,
					     vf->abs_vf_id, vf->num_sbs);
	if (rc != ECORE_SUCCESS)
		return rc;

	FUNC4(p_hwfn, p_ptt, (u16)vf->concrete_fid);

	FUNC2(igu_vf_conf, IGU_VF_CONF_PARENT, p_hwfn->rel_pf_id);
	FUNC3(p_hwfn, IGU_REG_VF_CONFIGURATION_RT_OFFSET, igu_vf_conf);

	FUNC5(p_hwfn, p_ptt, PHASE_VF, vf->abs_vf_id,
		       p_hwfn->hw_info.hw_mode);

	/* unpretend */
	FUNC4(p_hwfn, p_ptt, (u16)p_hwfn->hw_info.concrete_fid);

	vf->state = VF_FREE;

	return rc;
}