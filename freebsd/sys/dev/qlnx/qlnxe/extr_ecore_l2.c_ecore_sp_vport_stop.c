
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct vport_stop_ramrod_data {int vport_id; } ;
struct TYPE_2__ {struct vport_stop_ramrod_data vport_stop; } ;
struct ecore_spq_entry {TYPE_1__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_hwfn {int p_dev; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int ETH_RAMROD_VPORT_STOP ;
 scalar_t__ IS_VF (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int PROTOCOLID_ETH ;
 int ecore_fw_vport (struct ecore_hwfn*,int ,int *) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_get_cid (struct ecore_hwfn*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;
 int ecore_vf_pf_vport_stop (struct ecore_hwfn*) ;

enum _ecore_status_t ecore_sp_vport_stop(struct ecore_hwfn *p_hwfn,
       u16 opaque_fid,
       u8 vport_id)
{
 struct vport_stop_ramrod_data *p_ramrod;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 u8 abs_vport_id = 0;
 enum _ecore_status_t rc;

 if (IS_VF(p_hwfn->p_dev))
  return ecore_vf_pf_vport_stop(p_hwfn);

 rc = ecore_fw_vport(p_hwfn, vport_id, &abs_vport_id);
 if (rc != ECORE_SUCCESS)
  return rc;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = ecore_spq_get_cid(p_hwfn);
 init_data.opaque_fid = opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       ETH_RAMROD_VPORT_STOP,
       PROTOCOLID_ETH, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.vport_stop;
 p_ramrod->vport_id = abs_vport_id;

 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
