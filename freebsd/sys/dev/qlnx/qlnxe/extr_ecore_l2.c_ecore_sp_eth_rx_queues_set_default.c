
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_queue_update_ramrod_data {int complete_event_flg; int set_default_rss_queue; scalar_t__ complete_cqe_flg; int rx_queue_id; int vport_id; } ;
struct TYPE_3__ {struct rx_queue_update_ramrod_data rx_queue_update; } ;
struct ecore_spq_entry {TYPE_1__ ramrod; } ;
struct ecore_spq_comp_cb {int dummy; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; struct ecore_spq_comp_cb* p_comp_data; } ;
struct TYPE_4__ {int queue_id; int vport_id; } ;
struct ecore_queue_cid {TYPE_2__ abs; int opaque_fid; int cid; } ;
struct ecore_hwfn {int p_dev; } ;
typedef int init_data ;
typedef enum spq_mode { ____Placeholder_spq_mode } spq_mode ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_NOTIMPL ;
 int ECORE_SUCCESS ;
 int ETH_RAMROD_RX_QUEUE_UPDATE ;
 scalar_t__ IS_VF (int ) ;
 int OSAL_CPU_TO_LE16 (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 void* OSAL_NULL ;
 int PROTOCOLID_ETH ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ;

enum _ecore_status_t
ecore_sp_eth_rx_queues_set_default(struct ecore_hwfn *p_hwfn,
       void *p_rxq_handler,
       enum spq_mode comp_mode,
       struct ecore_spq_comp_cb *p_comp_data)
{
 struct rx_queue_update_ramrod_data *p_ramrod = OSAL_NULL;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 struct ecore_queue_cid *p_cid;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 if (IS_VF(p_hwfn->p_dev))
  return ECORE_NOTIMPL;

 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.comp_mode = comp_mode;
 init_data.p_comp_data = p_comp_data;

 p_cid = (struct ecore_queue_cid *)p_rxq_handler;


 init_data.cid = p_cid->cid;
 init_data.opaque_fid = p_cid->opaque_fid;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       ETH_RAMROD_RX_QUEUE_UPDATE,
       PROTOCOLID_ETH, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.rx_queue_update;
 p_ramrod->vport_id = p_cid->abs.vport_id;

 p_ramrod->rx_queue_id = OSAL_CPU_TO_LE16(p_cid->abs.queue_id);
 p_ramrod->complete_cqe_flg = 0;
 p_ramrod->complete_event_flg = 1;
 p_ramrod->set_default_rss_queue = 1;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);

 return rc;
}
