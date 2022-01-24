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
struct ecore_tunnel_info {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  tunnel_config; } ;
struct TYPE_8__ {TYPE_2__ pf_update; } ;
struct ecore_spq_entry {TYPE_3__ ramrod; } ;
struct ecore_spq_comp_cb {int dummy; } ;
struct ecore_sp_init_data {int comp_mode; struct ecore_spq_comp_cb* p_comp_data; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_4__* p_dev; TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum spq_mode { ____Placeholder_spq_mode } spq_mode ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_9__ {int /*<<< orphan*/  tunnel; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_PF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_INVAL ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int ECORE_NOTIMPL ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 struct ecore_spq_entry* OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_spq_entry*,struct ecore_spq_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_tunnel_info*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_tunnel_info*) ; 

enum _ecore_status_t
FUNC10(struct ecore_hwfn *p_hwfn,
			    struct ecore_ptt *p_ptt,
			    struct ecore_tunnel_info *p_tunn,
			    enum spq_mode comp_mode,
			    struct ecore_spq_comp_cb *p_comp_data)
{
	struct ecore_spq_entry *p_ent = OSAL_NULL;
	struct ecore_sp_init_data init_data;
	enum _ecore_status_t rc = ECORE_NOTIMPL;

	if (FUNC2(p_hwfn->p_dev))
		return FUNC9(p_hwfn, p_tunn);

	if (FUNC1(p_hwfn->p_dev)) {
		FUNC0(p_hwfn, true,
			  "A0 chip: tunnel pf update config is not supported\n");
		return rc;
	}

	if (!p_tunn)
		return ECORE_INVAL;

	/* Get SPQ entry */
	FUNC3(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC6(p_hwfn);
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = comp_mode;
	init_data.p_comp_data = p_comp_data;

	rc = FUNC5(p_hwfn, &p_ent,
				   COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
				   &init_data);
	if (rc != ECORE_SUCCESS)
		return rc;

	FUNC8(p_hwfn, p_tunn,
					&p_ent->ramrod.pf_update.tunnel_config);

	rc = FUNC7(p_hwfn, p_ent, OSAL_NULL);
	if (rc != ECORE_SUCCESS)
		return rc;

	FUNC4(p_hwfn, p_ptt, &p_hwfn->p_dev->tunnel);

	return rc;
}