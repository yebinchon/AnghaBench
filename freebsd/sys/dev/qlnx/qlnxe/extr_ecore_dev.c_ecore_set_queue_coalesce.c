
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {void* tx_coalesce_usecs; void* rx_coalesce_usecs; } ;


 int ECORE_AGAIN ;
 int ECORE_SUCCESS ;
 scalar_t__ IS_VF (TYPE_1__*) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_set_rxq_coalesce (struct ecore_hwfn*,struct ecore_ptt*,void*,struct ecore_queue_cid*) ;
 int ecore_set_txq_coalesce (struct ecore_hwfn*,struct ecore_ptt*,void*,struct ecore_queue_cid*) ;
 int ecore_vf_pf_set_coalesce (struct ecore_hwfn*,void*,void*,struct ecore_queue_cid*) ;

enum _ecore_status_t ecore_set_queue_coalesce(struct ecore_hwfn *p_hwfn,
           u16 rx_coal, u16 tx_coal,
           void *p_handle)
{
 struct ecore_queue_cid *p_cid = (struct ecore_queue_cid *)p_handle;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 struct ecore_ptt *p_ptt;
 p_ptt = ecore_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return ECORE_AGAIN;

 if (rx_coal) {
  rc = ecore_set_rxq_coalesce(p_hwfn, p_ptt, rx_coal, p_cid);
  if (rc)
   goto out;
  p_hwfn->p_dev->rx_coalesce_usecs = rx_coal;
 }

 if (tx_coal) {
  rc = ecore_set_txq_coalesce(p_hwfn, p_ptt, tx_coal, p_cid);
  if (rc)
   goto out;
  p_hwfn->p_dev->tx_coalesce_usecs = tx_coal;
 }
out:
 ecore_ptt_release(p_hwfn, p_ptt);

 return rc;
}
