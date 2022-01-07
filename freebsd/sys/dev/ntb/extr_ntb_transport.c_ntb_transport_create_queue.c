
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int qp_num; int tx_free_q; int ntb_tx_free_q_lock; int rx_pend_q; int ntb_rx_q_lock; int event_handler; int tx_handler; int rx_handler; void* cb_data; } ;
struct ntb_transport_ctx {int qp_bitmap; struct ntb_transport_qp* qp_vec; } ;
struct ntb_transport_child {int qpcnt; int qpoff; } ;
struct ntb_queue_handlers {int event_handler; int tx_handler; int rx_handler; } ;
struct ntb_queue_entry {struct ntb_transport_qp* qp; int len; int * buf; void* cb_data; } ;
typedef int device_t ;


 int M_NTB_T ;
 int M_WAITOK ;
 int M_ZERO ;
 int NTB_QP_DEF_NUM_ENTRIES ;
 struct ntb_transport_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct ntb_transport_ctx* device_get_softc (int ) ;
 struct ntb_queue_entry* malloc (int,int ,int) ;
 int ntb_db_clear (int ,unsigned long long) ;
 int ntb_list_add (int *,struct ntb_queue_entry*,int *) ;
 int transport_mtu ;

struct ntb_transport_qp *
ntb_transport_create_queue(device_t dev, int q,
    const struct ntb_queue_handlers *handlers, void *data)
{
 struct ntb_transport_child *nc = device_get_ivars(dev);
 struct ntb_transport_ctx *nt = device_get_softc(device_get_parent(dev));
 struct ntb_queue_entry *entry;
 struct ntb_transport_qp *qp;
 int i;

 if (q < 0 || q >= nc->qpcnt)
  return (((void*)0));

 qp = &nt->qp_vec[nc->qpoff + q];
 nt->qp_bitmap |= (1 << qp->qp_num);
 qp->cb_data = data;
 qp->rx_handler = handlers->rx_handler;
 qp->tx_handler = handlers->tx_handler;
 qp->event_handler = handlers->event_handler;

 for (i = 0; i < NTB_QP_DEF_NUM_ENTRIES; i++) {
  entry = malloc(sizeof(*entry), M_NTB_T, M_WAITOK | M_ZERO);
  entry->cb_data = data;
  entry->buf = ((void*)0);
  entry->len = transport_mtu;
  entry->qp = qp;
  ntb_list_add(&qp->ntb_rx_q_lock, entry, &qp->rx_pend_q);
 }

 for (i = 0; i < NTB_QP_DEF_NUM_ENTRIES; i++) {
  entry = malloc(sizeof(*entry), M_NTB_T, M_WAITOK | M_ZERO);
  entry->qp = qp;
  ntb_list_add(&qp->ntb_tx_free_q_lock, entry, &qp->tx_free_q);
 }

 ntb_db_clear(dev, 1ull << qp->qp_num);
 return (qp);
}
