
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef size_t u8 ;
typedef int u16 ;
struct TYPE_24__ {void* tci; int tpid; } ;
struct TYPE_28__ {int enable_stag_pri_change; int pri_map_valid; size_t* inner_to_outer_pri_map; TYPE_2__ outer_tag; } ;
struct TYPE_21__ {int * minor_ver_arr; int * major_ver_arr; } ;
struct pf_start_ramrod_data {size_t event_ring_sb_index; size_t event_ring_num_pages; int allow_npar_tx_switching; size_t base_vf_id; size_t num_vfs; TYPE_6__ outer_tag_config; TYPE_14__ hsi_fp_ver; void* personality; int tunnel_config; int consolid_q_pbl_addr; int event_ring_pbl_addr; int mf_mode; void* log_type_mask; scalar_t__ dont_log_ramrods; int path_id; void* event_ring_sb_id; } ;
struct ecore_tunnel_info {int dummy; } ;
struct TYPE_23__ {struct pf_start_ramrod_data pf_start; } ;
struct ecore_spq_entry {TYPE_1__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_19__ {int ovlan; int personality; int opaque_fid; } ;
struct TYPE_25__ {scalar_t__ pri_type; } ;
struct ecore_hwfn {TYPE_13__* p_dev; TYPE_12__ hw_info; TYPE_11__* p_consq; TYPE_8__* p_eq; TYPE_5__* p_dcbx_info; TYPE_3__ ufp_info; } ;
struct ecore_hw_sriov_info {scalar_t__ total_vfs; scalar_t__ first_vf_in_pf; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_31__ {int p_phys_table; } ;
struct TYPE_29__ {int p_phys_table; } ;
struct TYPE_22__ {TYPE_7__ pbl_sp; } ;
struct TYPE_30__ {size_t eq_sb_index; TYPE_15__ chain; } ;
struct TYPE_26__ {scalar_t__ dcbx_enabled; } ;
struct TYPE_27__ {TYPE_4__ results; } ;
struct TYPE_20__ {int tunnel; struct ecore_hw_sriov_info* p_iov_info; int mf_bits; } ;
struct TYPE_17__ {TYPE_9__ pbl_sp; } ;
struct TYPE_18__ {TYPE_10__ chain; } ;


 int COMMON_RAMROD_PF_START ;
 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,size_t,int ,void*) ;
 size_t ECORE_MAX_PFC_PRIORITIES ;
 int ECORE_MF_8021AD_TAGGING ;
 int ECORE_MF_8021Q_TAGGING ;
 int ECORE_MF_INTER_PF_SWITCH ;
 int ECORE_MF_OVLAN_CLSS ;
 int ECORE_MF_UFP_SPECIFIC ;
 int ECORE_MSG_SPQ ;
 int ECORE_NOTIMPL ;
 int ECORE_PATH_ID (struct ecore_hwfn*) ;






 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_UFP_PRI_OS ;
 int ETH_HSI_VER_MAJOR ;
 int ETH_HSI_VER_MINOR ;
 int ETH_P_8021AD ;
 int ETH_P_8021Q ;
 size_t ETH_VER_KEY ;
 int MF_NPAR ;
 int MF_OVLAN ;
 void* OSAL_CPU_TO_LE16 (int) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 void* OSAL_NULL ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;
 void* PERSONALITY_ETH ;
 void* PERSONALITY_FCOE ;
 void* PERSONALITY_ISCSI ;
 void* PERSONALITY_RDMA_AND_ETH ;
 int PROTOCOLID_COMMON ;
 scalar_t__ ecore_chain_get_page_cnt (TYPE_15__*) ;
 int ecore_chain_get_prod_idx (TYPE_15__*) ;
 int ecore_eq_prod_update (struct ecore_hwfn*,int ) ;
 int ecore_int_get_sp_sb_id (struct ecore_hwfn*) ;
 int ecore_set_hw_tunn_mode_port (struct ecore_hwfn*,struct ecore_ptt*,int *) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_get_cid (struct ecore_hwfn*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ;
 int ecore_tunn_set_pf_start_params (struct ecore_hwfn*,struct ecore_tunnel_info*,int *) ;

enum _ecore_status_t ecore_sp_pf_start(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           struct ecore_tunnel_info *p_tunn,
           bool allow_npar_tx_switch)
{
 struct pf_start_ramrod_data *p_ramrod = OSAL_NULL;
 u16 sb = ecore_int_get_sp_sb_id(p_hwfn);
 u8 sb_index = p_hwfn->p_eq->eq_sb_index;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 enum _ecore_status_t rc = ECORE_NOTIMPL;
 u8 page_cnt;
 u8 i;


 ecore_eq_prod_update(p_hwfn,
        ecore_chain_get_prod_idx(&p_hwfn->p_eq->chain));


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = ecore_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       COMMON_RAMROD_PF_START,
       PROTOCOLID_COMMON,
       &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;


 p_ramrod = &p_ent->ramrod.pf_start;
 p_ramrod->event_ring_sb_id = OSAL_CPU_TO_LE16(sb);
 p_ramrod->event_ring_sb_index = sb_index;
 p_ramrod->path_id = ECORE_PATH_ID(p_hwfn);


 p_ramrod->dont_log_ramrods = 0;
 p_ramrod->log_type_mask = OSAL_CPU_TO_LE16(0x8f);

 if (OSAL_TEST_BIT(ECORE_MF_OVLAN_CLSS, &p_hwfn->p_dev->mf_bits))
  p_ramrod->mf_mode = MF_OVLAN;
 else
  p_ramrod->mf_mode = MF_NPAR;

 p_ramrod->outer_tag_config.outer_tag.tci =
  OSAL_CPU_TO_LE16(p_hwfn->hw_info.ovlan);
 if (OSAL_TEST_BIT(ECORE_MF_8021Q_TAGGING, &p_hwfn->p_dev->mf_bits))
  p_ramrod->outer_tag_config.outer_tag.tpid = ETH_P_8021Q;
 else if (OSAL_TEST_BIT(ECORE_MF_8021AD_TAGGING,
   &p_hwfn->p_dev->mf_bits)) {
  p_ramrod->outer_tag_config.outer_tag.tpid = ETH_P_8021AD;
  p_ramrod->outer_tag_config.enable_stag_pri_change = 1;
 }

 p_ramrod->outer_tag_config.pri_map_valid = 1;
 for (i = 0; i < ECORE_MAX_PFC_PRIORITIES; i++)
  p_ramrod->outer_tag_config.inner_to_outer_pri_map[i] = i;




 if (OSAL_TEST_BIT(ECORE_MF_UFP_SPECIFIC, &p_hwfn->p_dev->mf_bits)) {
  if ((p_hwfn->ufp_info.pri_type == ECORE_UFP_PRI_OS) ||
      (p_hwfn->p_dcbx_info->results.dcbx_enabled))
   p_ramrod->outer_tag_config.enable_stag_pri_change = 1;
  else
   p_ramrod->outer_tag_config.enable_stag_pri_change = 0;
 }


 DMA_REGPAIR_LE(p_ramrod->event_ring_pbl_addr,
         p_hwfn->p_eq->chain.pbl_sp.p_phys_table);
 page_cnt = (u8)ecore_chain_get_page_cnt(&p_hwfn->p_eq->chain);
 p_ramrod->event_ring_num_pages = page_cnt;
 DMA_REGPAIR_LE(p_ramrod->consolid_q_pbl_addr,
         p_hwfn->p_consq->chain.pbl_sp.p_phys_table);

 ecore_tunn_set_pf_start_params(p_hwfn, p_tunn,
           &p_ramrod->tunnel_config);

 if (OSAL_TEST_BIT(ECORE_MF_INTER_PF_SWITCH,
     &p_hwfn->p_dev->mf_bits))
  p_ramrod->allow_npar_tx_switching = allow_npar_tx_switch;

 switch (p_hwfn->hw_info.personality) {
 case 133:
  p_ramrod->personality = PERSONALITY_ETH;
  break;
 case 129:
  p_ramrod->personality = PERSONALITY_FCOE;
  break;
 case 128:
  p_ramrod->personality = PERSONALITY_ISCSI;
  break;
 case 132:
 case 130:
 case 131:
  p_ramrod->personality = PERSONALITY_RDMA_AND_ETH;
  break;
 default:
  DP_NOTICE(p_hwfn, 1, "Unknown personality %d\n",
     p_hwfn->hw_info.personality);
  p_ramrod->personality = PERSONALITY_ETH;
 }

 if (p_hwfn->p_dev->p_iov_info) {
  struct ecore_hw_sriov_info *p_iov = p_hwfn->p_dev->p_iov_info;

  p_ramrod->base_vf_id = (u8)p_iov->first_vf_in_pf;
  p_ramrod->num_vfs = (u8)p_iov->total_vfs;
 }



 p_ramrod->hsi_fp_ver.major_ver_arr[ETH_VER_KEY] = ETH_HSI_VER_MAJOR;
 p_ramrod->hsi_fp_ver.minor_ver_arr[ETH_VER_KEY] = ETH_HSI_VER_MINOR;

 DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ,
     "Setting event_ring_sb [id %04x index %02x], outer_tag.tpid [%d], outer_tag.tci [%d]\n",
     sb, sb_index, p_ramrod->outer_tag_config.outer_tag.tpid,
     p_ramrod->outer_tag_config.outer_tag.tci);

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);

 if (p_tunn)
  ecore_set_hw_tunn_mode_port(p_hwfn, p_ptt,
         &p_hwfn->p_dev->tunnel);

 return rc;
}
