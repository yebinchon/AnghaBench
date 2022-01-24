#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_2__* p_dcbx_info; } ;
struct ecore_dcbx_results {TYPE_3__* arr; } ;
typedef  enum ecore_mib_read_type { ____Placeholder_ecore_mib_read_type } ecore_mib_read_type ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_9__ {TYPE_1__ dscp; } ;
struct TYPE_8__ {int tc; } ;
struct TYPE_7__ {int dscp_nig_update; struct ecore_dcbx_results results; TYPE_4__ get; } ;

/* Variables and functions */
 size_t DCBX_PROTOCOL_ROCE ; 
 size_t DCBX_PROTOCOL_ROCE_V2 ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_DCBX_OPERATIONAL_MIB ; 
 scalar_t__ FUNC1 (struct ecore_hwfn*) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  NIG_REG_DSCP_TO_TC_MAP_ENABLE ; 
 int /*<<< orphan*/  NIG_REG_TX_EDPM_CTRL ; 
 int NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN ; 
 int NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,TYPE_4__*,int) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

enum _ecore_status_t
FUNC12(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
			    enum ecore_mib_read_type type)
{
	enum _ecore_status_t rc = ECORE_SUCCESS;

	rc = FUNC7(p_hwfn, p_ptt, type);
	if (rc)
		return rc;

	if (type == ECORE_DCBX_OPERATIONAL_MIB) {
		FUNC4(p_hwfn, &p_hwfn->p_dcbx_info->get);

		rc = FUNC6(p_hwfn, p_ptt);
		if (!rc) {
			/* reconfigure tcs of QM queues according
			 * to negotiation results
			 */
			FUNC8(p_hwfn, p_ptt);

			/* update storm FW with negotiation results */
			FUNC10(p_hwfn);

#ifdef CONFIG_ECORE_ROCE
			/* for roce PFs, we may want to enable/disable DPM
			 * when DCBx change occurs
			 */
			if (ECORE_IS_ROCE_PERSONALITY(p_hwfn))
				ecore_roce_dpm_dcbx(p_hwfn, p_ptt);
#endif
		}
	}

	FUNC5(p_hwfn, &p_hwfn->p_dcbx_info->get, type);

	if (type == ECORE_DCBX_OPERATIONAL_MIB) {
		struct ecore_dcbx_results *p_data;
		u16 val;

		/* Update the DSCP to TC mapping enable bit if required */
		if (p_hwfn->p_dcbx_info->dscp_nig_update) {
			u8 val = !!p_hwfn->p_dcbx_info->get.dscp.enabled;
			u32 addr = NIG_REG_DSCP_TO_TC_MAP_ENABLE;

			rc = FUNC3(p_hwfn, p_ptt, addr, val);
			if (rc != ECORE_SUCCESS) {
				FUNC0(p_hwfn, false,
					  "Failed to update the DSCP to TC mapping enable bit\n");
				return rc;
			}

			p_hwfn->p_dcbx_info->dscp_nig_update = false;
		}

		/* Configure in NIG which protocols support EDPM and should
		 * honor PFC.
		 */
		p_data = &p_hwfn->p_dcbx_info->results;
		val = (0x1 << p_data->arr[DCBX_PROTOCOL_ROCE].tc) |
			(0x1 << p_data->arr[DCBX_PROTOCOL_ROCE_V2].tc);
		val <<= NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT;
		val |= NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN;
		FUNC11(p_hwfn, p_ptt, NIG_REG_TX_EDPM_CTRL, val);
	}

	FUNC2(p_hwfn, type);

	return rc;
}