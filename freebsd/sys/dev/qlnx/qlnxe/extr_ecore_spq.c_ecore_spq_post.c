
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int protocol_id; int cmd_id; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct ecore_spq_entry {scalar_t__ comp_mode; int list; int * queue; int priority; TYPE_2__ elem; } ;
struct ecore_spq {int lock; int chain; int completion_pending; int unlimited_pending; } ;
struct ecore_hwfn {TYPE_3__* p_dev; struct ecore_spq* p_spq; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {scalar_t__ recov_in_prog; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ) ;
 int ECORE_INVAL ;
 int ECORE_MSG_SPQ ;
 scalar_t__ ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int OSAL_FREE (TYPE_3__*,struct ecore_spq_entry*) ;
 int OSAL_LIST_REMOVE_ENTRY (int *,int *) ;
 struct ecore_spq* OSAL_NULL ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int __ecore_spq_return_entry (struct ecore_hwfn*,struct ecore_spq_entry*) ;
 int ecore_chain_return_produced (int *) ;
 int ecore_spq_add_entry (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;
 int ecore_spq_block (struct ecore_hwfn*,struct ecore_spq_entry*,int *,int) ;
 int ecore_spq_fill_entry (struct ecore_hwfn*,struct ecore_spq_entry*) ;
 int ecore_spq_pend_post (struct ecore_hwfn*) ;
 int ecore_spq_return_entry (struct ecore_hwfn*,struct ecore_spq_entry*) ;

enum _ecore_status_t ecore_spq_post(struct ecore_hwfn *p_hwfn,
        struct ecore_spq_entry *p_ent,
        u8 *fw_return_code)
{
 enum _ecore_status_t rc = ECORE_SUCCESS;
 struct ecore_spq *p_spq = p_hwfn ? p_hwfn->p_spq : OSAL_NULL;
 bool b_ret_ent = 1;

 if (!p_hwfn)
  return ECORE_INVAL;

 if (!p_ent) {
  DP_NOTICE(p_hwfn, 1, "Got a NULL pointer\n");
  return ECORE_INVAL;
 }

 if (p_hwfn->p_dev->recov_in_prog) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ,
      "Recovery is in progress -> skip spq post [cmd %02x protocol %02x]\n",
      p_ent->elem.hdr.cmd_id, p_ent->elem.hdr.protocol_id);



  return ECORE_SUCCESS;
 }

 OSAL_SPIN_LOCK(&p_spq->lock);


 rc = ecore_spq_fill_entry(p_hwfn, p_ent);


 if (rc)
  goto spq_post_fail;


 rc = ecore_spq_add_entry(p_hwfn, p_ent, p_ent->priority);
 if (rc)
  goto spq_post_fail;

 rc = ecore_spq_pend_post(p_hwfn);
 if (rc) {




  b_ret_ent = 0;
  goto spq_post_fail;
 }

 OSAL_SPIN_UNLOCK(&p_spq->lock);

 if (p_ent->comp_mode == ECORE_SPQ_MODE_EBLOCK) {





  rc = ecore_spq_block(p_hwfn, p_ent, fw_return_code,
         p_ent->queue == &p_spq->unlimited_pending);

  if (p_ent->queue == &p_spq->unlimited_pending) {



   OSAL_FREE(p_hwfn->p_dev, p_ent);




   return rc;
  }

  if (rc)
   goto spq_post_fail2;


  ecore_spq_return_entry(p_hwfn, p_ent);
 }
 return rc;

spq_post_fail2:
 OSAL_SPIN_LOCK(&p_spq->lock);
 OSAL_LIST_REMOVE_ENTRY(&p_ent->list, &p_spq->completion_pending);
 ecore_chain_return_produced(&p_spq->chain);

spq_post_fail:

 if (b_ret_ent)
  __ecore_spq_return_entry(p_hwfn, p_ent);
 OSAL_SPIN_UNLOCK(&p_spq->lock);

 return rc;
}
