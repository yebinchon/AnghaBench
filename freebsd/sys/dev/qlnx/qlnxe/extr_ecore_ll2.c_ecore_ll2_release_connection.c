
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int b_cb_registred; int rcq_chain; int rxq_chain; int descq_array; int rx_sb_index; } ;
struct TYPE_3__ {int b_cb_registred; int txq_chain; int descq_array; int tx_sb_index; } ;
struct ecore_ll2_info {int b_active; int mutex; int cid; TYPE_2__ rx_queue; TYPE_1__ tx_queue; } ;
struct ecore_hwfn {int p_dev; } ;


 scalar_t__ ECORE_LL2_RX_REGISTERED (struct ecore_ll2_info*) ;
 scalar_t__ ECORE_LL2_TX_REGISTERED (struct ecore_ll2_info*) ;
 int OSAL_FREE (int ,int ) ;
 int OSAL_MUTEX_ACQUIRE (int *) ;
 int OSAL_MUTEX_RELEASE (int *) ;
 struct ecore_ll2_info* OSAL_NULL ;
 int ecore_chain_free (int ,int *) ;
 int ecore_cxt_release_cid (struct ecore_hwfn*,int ) ;
 int ecore_int_unregister_cb (struct ecore_hwfn*,int ) ;
 struct ecore_ll2_info* ecore_ll2_handle_sanity (struct ecore_hwfn*,int ) ;
 int ecore_ll2_release_connection_ooo (struct ecore_hwfn*,struct ecore_ll2_info*) ;

void ecore_ll2_release_connection(void *cxt,
      u8 connection_handle)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)cxt;
 struct ecore_ll2_info *p_ll2_conn = OSAL_NULL;

 p_ll2_conn = ecore_ll2_handle_sanity(p_hwfn, connection_handle);
 if (p_ll2_conn == OSAL_NULL)
  return;

 if (ECORE_LL2_RX_REGISTERED(p_ll2_conn)) {
  p_ll2_conn->rx_queue.b_cb_registred = 0;
  ecore_int_unregister_cb(p_hwfn,
     p_ll2_conn->rx_queue.rx_sb_index);
 }

 if (ECORE_LL2_TX_REGISTERED(p_ll2_conn)) {
  p_ll2_conn->tx_queue.b_cb_registred = 0;
  ecore_int_unregister_cb(p_hwfn,
     p_ll2_conn->tx_queue.tx_sb_index);
 }

 OSAL_FREE(p_hwfn->p_dev, p_ll2_conn->tx_queue.descq_array);
 ecore_chain_free(p_hwfn->p_dev, &p_ll2_conn->tx_queue.txq_chain);

 OSAL_FREE(p_hwfn->p_dev, p_ll2_conn->rx_queue.descq_array);
 ecore_chain_free(p_hwfn->p_dev, &p_ll2_conn->rx_queue.rxq_chain);
 ecore_chain_free(p_hwfn->p_dev, &p_ll2_conn->rx_queue.rcq_chain);

 ecore_cxt_release_cid(p_hwfn, p_ll2_conn->cid);

 ecore_ll2_release_connection_ooo(p_hwfn, p_ll2_conn);

 OSAL_MUTEX_ACQUIRE(&p_ll2_conn->mutex);
 p_ll2_conn->b_active = 0;
 OSAL_MUTEX_RELEASE(&p_ll2_conn->mutex);
}
