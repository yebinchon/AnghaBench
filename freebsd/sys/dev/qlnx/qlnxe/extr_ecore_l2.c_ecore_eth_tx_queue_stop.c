
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_cid {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SUCCESS ;
 scalar_t__ IS_PF (int ) ;
 int ecore_eth_pf_tx_queue_stop (struct ecore_hwfn*,struct ecore_queue_cid*) ;
 int ecore_eth_queue_cid_release (struct ecore_hwfn*,struct ecore_queue_cid*) ;
 int ecore_vf_pf_txq_stop (struct ecore_hwfn*,struct ecore_queue_cid*) ;

enum _ecore_status_t ecore_eth_tx_queue_stop(struct ecore_hwfn *p_hwfn,
          void *p_handle)
{
 struct ecore_queue_cid *p_cid = (struct ecore_queue_cid *)p_handle;
 enum _ecore_status_t rc;

 if (IS_PF(p_hwfn->p_dev))
  rc = ecore_eth_pf_tx_queue_stop(p_hwfn, p_cid);
 else
  rc = ecore_vf_pf_txq_stop(p_hwfn, p_cid);

 if (rc == ECORE_SUCCESS)
  ecore_eth_queue_cid_release(p_hwfn, p_cid);
 return rc;
}
