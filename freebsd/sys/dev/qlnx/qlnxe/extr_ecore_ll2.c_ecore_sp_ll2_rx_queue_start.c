
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_11__ {int error_type; } ;
struct core_rx_start_ramrod_data {int complete_event_flg; int report_outer_vlan; int mf_si_bcast_accept_all; int mf_si_mcast_accept_all; int gsi_offload_flag; TYPE_5__ action_on_error; scalar_t__ main_func_queue; int queue_id; int inner_vlan_stripping_en; int drop_ttl0_flg; int cqe_pbl_addr; void* num_of_pbl_pages; int bd_base; void* mtu; int sb_index; void* sb_id; } ;
struct TYPE_8__ {struct core_rx_start_ramrod_data core_rx_queue_start; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct TYPE_9__ {int p_phys_addr; } ;
struct ecore_ll2_rx_queue {int rcq_chain; TYPE_3__ rxq_chain; int rx_sb_index; } ;
struct TYPE_12__ {int conn_type; int gsi_enable; int rx_vlan_removal_en; int rx_drop_ttl0_flg; scalar_t__ mtu; } ;
struct ecore_ll2_info {TYPE_6__ input; scalar_t__ main_func_queue; int queue_id; int cid; struct ecore_ll2_rx_queue rx_queue; } ;
struct TYPE_7__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_4__* p_dev; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum ecore_ll2_conn_type { ____Placeholder_ecore_ll2_conn_type } ecore_ll2_conn_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_10__ {int mf_bits; } ;


 int CORE_RAMROD_RX_QUEUE_START ;
 int DMA_REGPAIR_LE (int ,int ) ;
 scalar_t__ ECORE_LL2_TYPE_FCOE ;
 int ECORE_LL2_TYPE_IWARP ;
 int ECORE_LL2_TYPE_ROCE ;
 int ECORE_MF_LL2_NON_UNICAST ;
 int ECORE_MF_UFP_SPECIFIC ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE16 (scalar_t__) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 void* OSAL_NULL ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;
 int PROTOCOLID_CORE ;
 scalar_t__ ecore_chain_get_page_cnt (int *) ;
 int ecore_chain_get_pbl_phys (int *) ;
 scalar_t__ ecore_int_get_sp_sb_id (struct ecore_hwfn*) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ;

__attribute__((used)) static enum _ecore_status_t ecore_sp_ll2_rx_queue_start(struct ecore_hwfn *p_hwfn,
       struct ecore_ll2_info *p_ll2_conn,
       u8 action_on_error)
{
 enum ecore_ll2_conn_type conn_type = p_ll2_conn->input.conn_type;
 struct ecore_ll2_rx_queue *p_rx = &p_ll2_conn->rx_queue;
 struct core_rx_start_ramrod_data *p_ramrod = OSAL_NULL;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 u16 cqe_pbl_size;
 enum _ecore_status_t rc = ECORE_SUCCESS;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = p_ll2_conn->cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       CORE_RAMROD_RX_QUEUE_START,
       PROTOCOLID_CORE, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.core_rx_queue_start;

 p_ramrod->sb_id = OSAL_CPU_TO_LE16(ecore_int_get_sp_sb_id(p_hwfn));
 p_ramrod->sb_index = p_rx->rx_sb_index;
 p_ramrod->complete_event_flg = 1;

 p_ramrod->mtu = OSAL_CPU_TO_LE16(p_ll2_conn->input.mtu);
 DMA_REGPAIR_LE(p_ramrod->bd_base,
         p_rx->rxq_chain.p_phys_addr);
 cqe_pbl_size = (u16)ecore_chain_get_page_cnt(&p_rx->rcq_chain);
 p_ramrod->num_of_pbl_pages = OSAL_CPU_TO_LE16(cqe_pbl_size);
 DMA_REGPAIR_LE(p_ramrod->cqe_pbl_addr,
         ecore_chain_get_pbl_phys(&p_rx->rcq_chain));

 p_ramrod->drop_ttl0_flg = p_ll2_conn->input.rx_drop_ttl0_flg;
 p_ramrod->inner_vlan_stripping_en =
  p_ll2_conn->input.rx_vlan_removal_en;

 if (OSAL_TEST_BIT(ECORE_MF_UFP_SPECIFIC, &p_hwfn->p_dev->mf_bits) &&
     (p_ll2_conn->input.conn_type == ECORE_LL2_TYPE_FCOE))
  p_ramrod->report_outer_vlan = 1;
 p_ramrod->queue_id = p_ll2_conn->queue_id;
 p_ramrod->main_func_queue = p_ll2_conn->main_func_queue;

 if (OSAL_TEST_BIT(ECORE_MF_LL2_NON_UNICAST,
     &p_hwfn->p_dev->mf_bits) &&
     p_ramrod->main_func_queue &&
     ((conn_type != ECORE_LL2_TYPE_ROCE) &&
      (conn_type != ECORE_LL2_TYPE_IWARP))) {
  p_ramrod->mf_si_bcast_accept_all = 1;
  p_ramrod->mf_si_mcast_accept_all = 1;
 } else {
  p_ramrod->mf_si_bcast_accept_all = 0;
  p_ramrod->mf_si_mcast_accept_all = 0;
 }

 p_ramrod->action_on_error.error_type = action_on_error;
 p_ramrod->gsi_offload_flag = p_ll2_conn->input.gsi_enable;
 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
