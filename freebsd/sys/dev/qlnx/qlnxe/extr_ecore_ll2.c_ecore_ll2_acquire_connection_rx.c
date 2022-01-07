
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ll2_rx_packet {int dummy; } ;
struct TYPE_4__ {int rx_num_desc; int conn_type; } ;
struct TYPE_3__ {int rcq_chain; struct ecore_ll2_rx_packet* descq_array; int rxq_chain; } ;
struct ecore_ll2_info {TYPE_2__ input; TYPE_1__ rx_queue; } ;
struct ecore_hwfn {int p_dev; } ;
struct core_rx_fast_path_cqe {int dummy; } ;
struct core_rx_bd {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ) ;
 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_MODE_NEXT_PTR ;
 int ECORE_CHAIN_MODE_PBL ;
 int ECORE_CHAIN_USE_TO_CONSUME_PRODUCE ;
 int ECORE_MSG_LL2 ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 int OSAL_NULL ;
 struct ecore_ll2_rx_packet* OSAL_ZALLOC (int ,int ,int) ;
 int ecore_chain_alloc (int ,int ,int ,int ,int ,int,int *,int ) ;
 int ecore_chain_get_capacity (int *) ;

__attribute__((used)) static enum _ecore_status_t
ecore_ll2_acquire_connection_rx(struct ecore_hwfn *p_hwfn,
    struct ecore_ll2_info *p_ll2_info)
{
 struct ecore_ll2_rx_packet *p_descq;
 u32 capacity;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 if (!p_ll2_info->input.rx_num_desc)
  goto out;

 rc = ecore_chain_alloc(p_hwfn->p_dev,
          ECORE_CHAIN_USE_TO_CONSUME_PRODUCE,
          ECORE_CHAIN_MODE_NEXT_PTR,
          ECORE_CHAIN_CNT_TYPE_U16,
          p_ll2_info->input.rx_num_desc,
          sizeof(struct core_rx_bd),
          &p_ll2_info->rx_queue.rxq_chain, OSAL_NULL);
 if (rc) {
  DP_NOTICE(p_hwfn, 0,
     "Failed to allocate ll2 rxq chain\n");
  goto out;
 }

 capacity = ecore_chain_get_capacity(&p_ll2_info->rx_queue.rxq_chain);
 p_descq = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL,
         capacity * sizeof(struct ecore_ll2_rx_packet));
 if (!p_descq) {
  rc = ECORE_NOMEM;
  DP_NOTICE(p_hwfn, 0,
     "Failed to allocate ll2 Rx desc\n");
  goto out;
 }
 p_ll2_info->rx_queue.descq_array = p_descq;

 rc = ecore_chain_alloc(p_hwfn->p_dev,
          ECORE_CHAIN_USE_TO_CONSUME_PRODUCE,
          ECORE_CHAIN_MODE_PBL,
          ECORE_CHAIN_CNT_TYPE_U16,
          p_ll2_info->input.rx_num_desc,
          sizeof(struct core_rx_fast_path_cqe),
          &p_ll2_info->rx_queue.rcq_chain, OSAL_NULL);
 if (rc != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0,
     "Failed to allocate ll2 rcq chain\n");
  goto out;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_LL2,
     "Allocated LL2 Rxq [Type %08x] with 0x%08x buffers\n",
     p_ll2_info->input.conn_type,
     p_ll2_info->input.rx_num_desc);

out:
 return rc;
}
