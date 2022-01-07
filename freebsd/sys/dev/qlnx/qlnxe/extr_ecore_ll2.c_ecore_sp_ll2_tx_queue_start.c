
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct core_tx_start_ramrod_data {int stats_en; int gsi_offload_flag; void* conn_type; void* qm_pq_id; void* pbl_size; int pbl_base_addr; int stats_id; void* mtu; int sb_index; void* sb_id; } ;
struct TYPE_4__ {struct core_tx_start_ramrod_data core_tx_queue_start; } ;
struct ecore_spq_entry {TYPE_1__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_ll2_tx_queue {int db_msg; int doorbell_addr; int txq_chain; int tx_sb_index; } ;
struct TYPE_6__ {int conn_type; int tx_tc; int gsi_enable; scalar_t__ mtu; } ;
struct ecore_ll2_info {int tx_stats_en; TYPE_3__ input; int tx_stats_id; int cid; struct ecore_ll2_tx_queue tx_queue; } ;
struct TYPE_5__ {int personality; int opaque_fid; } ;
struct ecore_hwfn {int p_dev; TYPE_2__ hw_info; } ;
typedef int init_data ;
typedef enum ecore_ll2_conn_type { ____Placeholder_ecore_ll2_conn_type } ecore_ll2_conn_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int CORE_RAMROD_TX_QUEUE_START ;
 int DB_REC_KERNEL ;
 int DB_REC_WIDTH_32B ;
 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int ECORE_LL2_TX_REGISTERED (struct ecore_ll2_info*) ;





 int ECORE_NOTIMPL ;
 int ECORE_PCI_ISCSI ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE16 (scalar_t__) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 void* OSAL_NULL ;

 int PQ_FLAGS_LB ;
 int PQ_FLAGS_OFLD ;
 int PQ_FLAGS_OOO ;
 int PROTOCOLID_CORE ;
 void* PROTOCOLID_ETH ;
 void* PROTOCOLID_FCOE ;
 void* PROTOCOLID_ISCSI ;
 void* PROTOCOLID_IWARP ;
 void* PROTOCOLID_ROCE ;

 scalar_t__ ecore_chain_get_page_cnt (int *) ;
 int ecore_chain_get_pbl_phys (int *) ;
 int ecore_db_recovery_add (int ,int ,int *,int ,int ) ;
 scalar_t__ ecore_get_cm_pq_idx (struct ecore_hwfn*,int ) ;
 scalar_t__ ecore_int_get_sp_sb_id (struct ecore_hwfn*) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ;

__attribute__((used)) static enum _ecore_status_t ecore_sp_ll2_tx_queue_start(struct ecore_hwfn *p_hwfn,
       struct ecore_ll2_info *p_ll2_conn)
{
 enum ecore_ll2_conn_type conn_type = p_ll2_conn->input.conn_type;
 struct ecore_ll2_tx_queue *p_tx = &p_ll2_conn->tx_queue;
 struct core_tx_start_ramrod_data *p_ramrod = OSAL_NULL;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 u16 pq_id = 0, pbl_size;
 enum _ecore_status_t rc = ECORE_NOTIMPL;

 if (!ECORE_LL2_TX_REGISTERED(p_ll2_conn))
  return ECORE_SUCCESS;

 if (p_ll2_conn->input.conn_type == 131)
  p_ll2_conn->tx_stats_en = 0;
 else
  p_ll2_conn->tx_stats_en = 1;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = p_ll2_conn->cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       CORE_RAMROD_TX_QUEUE_START,
       PROTOCOLID_CORE, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.core_tx_queue_start;

 p_ramrod->sb_id = OSAL_CPU_TO_LE16(ecore_int_get_sp_sb_id(p_hwfn));
 p_ramrod->sb_index = p_tx->tx_sb_index;
 p_ramrod->mtu = OSAL_CPU_TO_LE16(p_ll2_conn->input.mtu);
 p_ramrod->stats_en = p_ll2_conn->tx_stats_en;
 p_ramrod->stats_id = p_ll2_conn->tx_stats_id;

 DMA_REGPAIR_LE(p_ramrod->pbl_base_addr,
         ecore_chain_get_pbl_phys(&p_tx->txq_chain));
 pbl_size = (u16)ecore_chain_get_page_cnt(&p_tx->txq_chain);
 p_ramrod->pbl_size = OSAL_CPU_TO_LE16(pbl_size);


 switch (p_ll2_conn->input.tx_tc) {
 case 128:
  pq_id = ecore_get_cm_pq_idx(p_hwfn, PQ_FLAGS_LB);
  break;
 case 129:
  pq_id = ecore_get_cm_pq_idx(p_hwfn, PQ_FLAGS_OOO);
  break;
 default:
  pq_id = ecore_get_cm_pq_idx(p_hwfn, PQ_FLAGS_OFLD);
 }

 p_ramrod->qm_pq_id = OSAL_CPU_TO_LE16(pq_id);

 switch (conn_type) {
 case 134:
  p_ramrod->conn_type = PROTOCOLID_FCOE;
  break;
 case 133:
  p_ramrod->conn_type = PROTOCOLID_ISCSI;
  break;
 case 130:
  p_ramrod->conn_type = PROTOCOLID_ROCE;
  break;
 case 132:
  p_ramrod->conn_type = PROTOCOLID_IWARP;
  break;
 case 131:
  if (p_hwfn->hw_info.personality == ECORE_PCI_ISCSI) {
   p_ramrod->conn_type = PROTOCOLID_ISCSI;
  } else {
   p_ramrod->conn_type = PROTOCOLID_IWARP;
  }
  break;
 default:
  p_ramrod->conn_type = PROTOCOLID_ETH;
  DP_NOTICE(p_hwfn, 0, "Unknown connection type: %d\n",
     conn_type);
 }

 p_ramrod->gsi_offload_flag = p_ll2_conn->input.gsi_enable;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
 if (rc != ECORE_SUCCESS)
  return rc;

 rc = ecore_db_recovery_add(p_hwfn->p_dev, p_tx->doorbell_addr,
       &p_tx->db_msg, DB_REC_WIDTH_32B,
       DB_REC_KERNEL);
 return rc;
}
