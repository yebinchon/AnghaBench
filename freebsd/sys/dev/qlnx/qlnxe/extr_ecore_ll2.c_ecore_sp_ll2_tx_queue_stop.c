
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_spq_entry {int dummy; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_ll2_tx_queue {int db_msg; int doorbell_addr; } ;
struct ecore_ll2_info {int cid; struct ecore_ll2_tx_queue tx_queue; } ;
struct TYPE_2__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int p_dev; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int CORE_RAMROD_TX_QUEUE_STOP ;
 int ECORE_NOTIMPL ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 struct ecore_spq_entry* OSAL_NULL ;
 int PROTOCOLID_CORE ;
 int ecore_db_recovery_del (int ,int ,int *) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,struct ecore_spq_entry*) ;

__attribute__((used)) static enum _ecore_status_t ecore_sp_ll2_tx_queue_stop(struct ecore_hwfn *p_hwfn,
             struct ecore_ll2_info *p_ll2_conn)
{
 struct ecore_ll2_tx_queue *p_tx = &p_ll2_conn->tx_queue;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 enum _ecore_status_t rc = ECORE_NOTIMPL;

 ecore_db_recovery_del(p_hwfn->p_dev, p_tx->doorbell_addr,
         &p_tx->db_msg);


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = p_ll2_conn->cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       CORE_RAMROD_TX_QUEUE_STOP,
       PROTOCOLID_CORE, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
