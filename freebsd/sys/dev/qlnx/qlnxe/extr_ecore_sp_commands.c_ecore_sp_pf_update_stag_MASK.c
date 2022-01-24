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
struct TYPE_4__ {int update_mf_vlan_flag; int /*<<< orphan*/  mf_vlan; } ;
struct TYPE_5__ {TYPE_1__ pf_update; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct TYPE_6__ {int /*<<< orphan*/  ovlan; int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_3__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_PF_UPDATE ; 
 int ECORE_NOTIMPL ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_CB ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 struct ecore_spq_entry* OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_spq_entry*,struct ecore_spq_entry*) ; 

enum _ecore_status_t FUNC5(struct ecore_hwfn *p_hwfn)
{
	struct ecore_spq_entry *p_ent = OSAL_NULL;
	struct ecore_sp_init_data init_data;
	enum _ecore_status_t rc = ECORE_NOTIMPL;

	/* Get SPQ entry */
	FUNC1(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC3(p_hwfn);
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_CB;

	rc = FUNC2(p_hwfn, &p_ent,
				   COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
				   &init_data);
	if (rc != ECORE_SUCCESS)
		return rc;

	p_ent->ramrod.pf_update.update_mf_vlan_flag = true;
	p_ent->ramrod.pf_update.mf_vlan = FUNC0(p_hwfn->hw_info.ovlan);

	return FUNC4(p_hwfn, p_ent, OSAL_NULL);
}