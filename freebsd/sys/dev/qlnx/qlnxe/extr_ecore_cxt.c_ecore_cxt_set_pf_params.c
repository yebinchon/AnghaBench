
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ecore_iscsi_pf_params {int num_cons; int num_tasks; } ;
struct ecore_fcoe_pf_params {int num_cons; int num_tasks; } ;
struct ecore_eth_pf_params {int num_cons; int num_arfs_filters; int num_vf_cons; } ;
struct TYPE_7__ {struct ecore_iscsi_pf_params iscsi_pf_params; struct ecore_fcoe_pf_params fcoe_pf_params; struct ecore_eth_pf_params eth_pf_params; int rdma_pf_params; } ;
struct TYPE_5__ {int personality; } ;
struct ecore_hwfn {TYPE_4__* p_dev; TYPE_3__ pf_params; TYPE_2__* p_cxt_mngr; TYPE_1__ hw_info; scalar_t__ using_ll2; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_8__ {int mf_bits; } ;
struct TYPE_6__ {int arfs_count; } ;


 int DP_INFO (TYPE_4__*,char*) ;
 int ECORE_CXT_FCOE_TID_SEG ;
 int ECORE_CXT_ISCSI_TID_SEG ;
 int ECORE_INVAL ;
 int ECORE_MF_DISABLE_ARFS ;






 int ECORE_SUCCESS ;
 int ETH_PF_PARAMS_VF_CONS_DEFAULT ;
 int OSAL_TEST_BIT (int ,int *) ;
 int PROTOCOLID_CORE ;
 int PROTOCOLID_ETH ;
 int PROTOCOLID_FCOE ;
 int PROTOCOLID_ISCSI ;
 int ecore_cxt_set_proto_cid_count (struct ecore_hwfn*,int ,int,int ) ;
 int ecore_cxt_set_proto_tid_count (struct ecore_hwfn*,int ,int ,int ,int ,int) ;
 int ecore_rdma_set_pf_params (struct ecore_hwfn*,int *,int) ;

enum _ecore_status_t ecore_cxt_set_pf_params(struct ecore_hwfn *p_hwfn,
          u32 rdma_tasks)
{

 u32 core_cids = 1;

 if (p_hwfn->using_ll2)
  core_cids += 4;

 ecore_cxt_set_proto_cid_count(p_hwfn, PROTOCOLID_CORE, core_cids, 0);

 switch (p_hwfn->hw_info.personality) {
 case 131:
 case 132:
 case 130:
 {
  ecore_rdma_set_pf_params(p_hwfn,
      &p_hwfn->pf_params.rdma_pf_params,
      rdma_tasks);


 }
 case 133:
 {
  u32 count = 0;

  struct ecore_eth_pf_params *p_params =
     &p_hwfn->pf_params.eth_pf_params;

  if (!p_params->num_vf_cons)
   p_params->num_vf_cons = ETH_PF_PARAMS_VF_CONS_DEFAULT;
  ecore_cxt_set_proto_cid_count(p_hwfn, PROTOCOLID_ETH,
           p_params->num_cons,
           p_params->num_vf_cons);

  count = p_params->num_arfs_filters;

  if (!OSAL_TEST_BIT(ECORE_MF_DISABLE_ARFS,
       &p_hwfn->p_dev->mf_bits))
   p_hwfn->p_cxt_mngr->arfs_count = count;

  break;
 }
 case 129:
 {
  struct ecore_fcoe_pf_params *p_params;

  p_params = &p_hwfn->pf_params.fcoe_pf_params;

  if (p_params->num_cons && p_params->num_tasks) {
   ecore_cxt_set_proto_cid_count(p_hwfn, PROTOCOLID_FCOE,
            p_params->num_cons, 0);

   ecore_cxt_set_proto_tid_count(p_hwfn, PROTOCOLID_FCOE,
            ECORE_CXT_FCOE_TID_SEG,
            0,
            p_params->num_tasks,
            1);
  } else {
   DP_INFO(p_hwfn->p_dev,
    "Fcoe personality used without setting params!\n");
  }
  break;
 }
 case 128:
 {
  struct ecore_iscsi_pf_params *p_params;

  p_params = &p_hwfn->pf_params.iscsi_pf_params;

  if (p_params->num_cons && p_params->num_tasks) {
   ecore_cxt_set_proto_cid_count(p_hwfn, PROTOCOLID_ISCSI,
            p_params->num_cons, 0);

   ecore_cxt_set_proto_tid_count(p_hwfn, PROTOCOLID_ISCSI,
            ECORE_CXT_ISCSI_TID_SEG,
            0,
            p_params->num_tasks,
            1);
  } else {
   DP_INFO(p_hwfn->p_dev,
    "Iscsi personality used without setting params!\n");
  }
  break;
 }
 default:
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
