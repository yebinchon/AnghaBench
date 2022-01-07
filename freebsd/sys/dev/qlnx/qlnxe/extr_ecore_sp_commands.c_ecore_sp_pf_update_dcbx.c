
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pf_update; } ;
struct ecore_spq_entry {TYPE_3__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_2__* p_dcbx_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {int results; } ;


 int COMMON_RAMROD_PF_UPDATE ;
 int ECORE_NOTIMPL ;
 int ECORE_SPQ_MODE_CB ;
 int ECORE_SUCCESS ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 struct ecore_spq_entry* OSAL_NULL ;
 int PROTOCOLID_COMMON ;
 int ecore_dcbx_set_pf_update_params (int *,int *) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_get_cid (struct ecore_hwfn*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,struct ecore_spq_entry*) ;

enum _ecore_status_t ecore_sp_pf_update_dcbx(struct ecore_hwfn *p_hwfn)
{
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 enum _ecore_status_t rc = ECORE_NOTIMPL;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = ecore_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_CB;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       COMMON_RAMROD_PF_UPDATE, PROTOCOLID_COMMON,
       &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 ecore_dcbx_set_pf_update_params(&p_hwfn->p_dcbx_info->results,
     &p_ent->ramrod.pf_update);

 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
