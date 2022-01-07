
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef size_t uint64_t ;
struct ntb_transport_qp {unsigned int qp_num; int client_ready; scalar_t__ tx_mw_phys; size_t tx_max_frame; size_t tx_max_entry; int tx_free_q; int rx_pend_q; int rx_post_q; int rxc_tq; int rxc_db_work; int tx_lock; int ntb_tx_free_q_lock; int ntb_rx_q_lock; int rx_full; int link_work; int * tx_mw; void* rx_info; int * event_handler; int dev; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_mw {scalar_t__ phys_addr; unsigned int tx_size; int * vbase; } ;
struct ntb_transport_ctx {unsigned int mw_count; unsigned int qp_count; int dev; struct ntb_transport_qp* qp_vec; struct ntb_transport_mw* mw_vec; } ;
struct ntb_rx_info {int dummy; } ;


 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int MTX_SPIN ;
 int M_WAITOK ;
 int PI_NET ;
 unsigned int QP_TO_MW (struct ntb_transport_ctx*,unsigned int) ;
 int STAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct ntb_transport_qp*) ;
 int callout_init (int *,int) ;
 int device_get_nameunit (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ntb_qp_link_down_reset (struct ntb_transport_qp*) ;
 int ntb_transport_rxc_db ;
 size_t qmin (int ,size_t) ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ,unsigned int) ;
 int taskqueue_thread_enqueue ;
 int transport_mtu ;

__attribute__((used)) static void
ntb_transport_init_queue(struct ntb_transport_ctx *nt, unsigned int qp_num)
{
 struct ntb_transport_mw *mw;
 struct ntb_transport_qp *qp;
 vm_paddr_t mw_base;
 uint64_t qp_offset;
 size_t tx_size;
 unsigned num_qps_mw, mw_num, mw_count;

 mw_count = nt->mw_count;
 mw_num = QP_TO_MW(nt, qp_num);
 mw = &nt->mw_vec[mw_num];

 qp = &nt->qp_vec[qp_num];
 qp->qp_num = qp_num;
 qp->transport = nt;
 qp->dev = nt->dev;
 qp->client_ready = 0;
 qp->event_handler = ((void*)0);
 ntb_qp_link_down_reset(qp);

 if (mw_num < nt->qp_count % mw_count)
  num_qps_mw = nt->qp_count / mw_count + 1;
 else
  num_qps_mw = nt->qp_count / mw_count;

 mw_base = mw->phys_addr;

 tx_size = mw->tx_size / num_qps_mw;
 qp_offset = tx_size * (qp_num / mw_count);

 qp->tx_mw = mw->vbase + qp_offset;
 KASSERT(qp->tx_mw != ((void*)0), ("uh oh?"));


 qp->tx_mw_phys = mw_base + qp_offset;
 KASSERT(qp->tx_mw_phys != 0, ("uh oh?"));

 tx_size -= sizeof(struct ntb_rx_info);
 qp->rx_info = (void *)(qp->tx_mw + tx_size);


 qp->tx_max_frame = qmin(transport_mtu, tx_size / 2);
 qp->tx_max_entry = tx_size / qp->tx_max_frame;

 callout_init(&qp->link_work, 0);
 callout_init(&qp->rx_full, 1);

 mtx_init(&qp->ntb_rx_q_lock, "ntb rx q", ((void*)0), MTX_SPIN);
 mtx_init(&qp->ntb_tx_free_q_lock, "ntb tx free q", ((void*)0), MTX_SPIN);
 mtx_init(&qp->tx_lock, "ntb transport tx", ((void*)0), MTX_DEF);
 TASK_INIT(&qp->rxc_db_work, 0, ntb_transport_rxc_db, qp);
 qp->rxc_tq = taskqueue_create("ntbt_rx", M_WAITOK,
     taskqueue_thread_enqueue, &qp->rxc_tq);
 taskqueue_start_threads(&qp->rxc_tq, 1, PI_NET, "%s rx%d",
     device_get_nameunit(nt->dev), qp_num);

 STAILQ_INIT(&qp->rx_post_q);
 STAILQ_INIT(&qp->rx_pend_q);
 STAILQ_INIT(&qp->tx_free_q);
}
