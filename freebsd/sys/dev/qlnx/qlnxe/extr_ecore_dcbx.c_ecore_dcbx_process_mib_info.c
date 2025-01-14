
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_7__ {void* ooo_tc; } ;
struct ecore_hw_info {void* num_active_tc; } ;
struct ecore_hwfn {TYPE_4__* p_dcbx_info; int rel_pf_id; TYPE_3__ qm_info; struct ecore_hw_info hw_info; } ;
struct ecore_dcbx_results {int dcbx_enabled; int pf_id; int member_0; } ;
struct dcbx_ets_feature {int flags; int * pri_tc_tbl; } ;
struct dcbx_app_priority_feature {int flags; struct dcbx_app_priority_entry* app_pri_tbl; } ;
struct dcbx_app_priority_entry {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {struct dcbx_ets_feature ets; struct dcbx_app_priority_feature app; } ;
struct TYPE_6__ {TYPE_1__ features; int flags; } ;
struct TYPE_8__ {int results; TYPE_2__ operational; } ;


 int DCBX_APP_NUM_ENTRIES ;
 int DCBX_CONFIG_VERSION ;
 int DCBX_ETS_MAX_TCS ;
 int DCBX_OOO_TC ;
 int ECORE_SUCCESS ;
 void* GET_MFW_FIELD (int ,int ) ;
 int OSAL_MEMCPY (int *,struct ecore_dcbx_results*,int) ;
 int ecore_dcbx_dp_protocol (struct ecore_hwfn*,struct ecore_dcbx_results*) ;
 int ecore_dcbx_process_tlv (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_dcbx_results*,struct dcbx_app_priority_entry*,int ,int,void*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_dcbx_process_mib_info(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 struct dcbx_app_priority_feature *p_app;
 struct dcbx_app_priority_entry *p_tbl;
 struct ecore_dcbx_results data = { 0 };
 struct dcbx_ets_feature *p_ets;
 struct ecore_hw_info *p_info;
 u32 pri_tc_tbl, flags;
 u8 dcbx_version;
 int num_entries;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 flags = p_hwfn->p_dcbx_info->operational.flags;
 dcbx_version = GET_MFW_FIELD(flags, DCBX_CONFIG_VERSION);

 p_app = &p_hwfn->p_dcbx_info->operational.features.app;
 p_tbl = p_app->app_pri_tbl;

 p_ets = &p_hwfn->p_dcbx_info->operational.features.ets;
 pri_tc_tbl = p_ets->pri_tc_tbl[0];

 p_info = &p_hwfn->hw_info;
 num_entries = GET_MFW_FIELD(p_app->flags, DCBX_APP_NUM_ENTRIES);

 rc = ecore_dcbx_process_tlv(p_hwfn, p_ptt, &data, p_tbl, pri_tc_tbl,
        num_entries, dcbx_version);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_info->num_active_tc = GET_MFW_FIELD(p_ets->flags, DCBX_ETS_MAX_TCS);
 p_hwfn->qm_info.ooo_tc = GET_MFW_FIELD(p_ets->flags, DCBX_OOO_TC);
 data.pf_id = p_hwfn->rel_pf_id;
 data.dcbx_enabled = !!dcbx_version;

 ecore_dcbx_dp_protocol(p_hwfn, &data);

 OSAL_MEMCPY(&p_hwfn->p_dcbx_info->results, &data,
      sizeof(struct ecore_dcbx_results));

 return ECORE_SUCCESS;
}
