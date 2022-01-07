
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct core_rx_stop_ramrod_data {int complete_event_flg; int queue_id; } ;
struct TYPE_4__ {struct core_rx_stop_ramrod_data core_rx_queue_stop; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_ll2_info {int queue_id; int cid; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int CORE_RAMROD_RX_QUEUE_STOP ;
 int ECORE_NOTIMPL ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 void* OSAL_NULL ;
 int PROTOCOLID_CORE ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,void*) ;

__attribute__((used)) static enum _ecore_status_t ecore_sp_ll2_rx_queue_stop(struct ecore_hwfn *p_hwfn,
             struct ecore_ll2_info *p_ll2_conn)
{
 struct core_rx_stop_ramrod_data *p_ramrod = OSAL_NULL;
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 struct ecore_sp_init_data init_data;
 enum _ecore_status_t rc = ECORE_NOTIMPL;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = p_ll2_conn->cid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       CORE_RAMROD_RX_QUEUE_STOP,
       PROTOCOLID_CORE, &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.core_rx_queue_stop;

 p_ramrod->complete_event_flg = 1;
 p_ramrod->queue_id = p_ll2_conn->queue_id;

 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
