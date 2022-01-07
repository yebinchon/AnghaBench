
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_2__ {struct netfront_txq* sring; } ;
struct netfront_txq {int id; TYPE_1__ ring; int gref_head; void* ring_ref; int tq; int br; int xen_intr_handle; int name; int defrtask; int lock; void** mbufs; void** grant_ref; struct netfront_info* info; } ;
struct netfront_info {struct netfront_txq* txq; } ;
typedef int netif_tx_sring_t ;
typedef int device_t ;


 int ENOMEM ;
 int FRONT_RING_INIT (TYPE_1__*,int *,int) ;
 void* GRANT_REF_INVALID ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NET_TX_RING_SIZE ;
 int PAGE_SIZE ;
 int PI_NET ;
 int SHARED_RING_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct netfront_txq*) ;
 int XN_QUEUE_NAME_LEN ;
 int buf_ring_alloc (int,int ,int,int *) ;
 int buf_ring_free (int ,int ) ;
 int destroy_txq (struct netfront_txq*) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int disconnect_txq (struct netfront_txq*) ;
 int free (struct netfront_txq*,int ) ;
 scalar_t__ gnttab_alloc_grant_references (int,int *) ;
 int gnttab_end_foreign_access (void*,int *) ;
 int gnttab_free_grant_references (int ) ;
 struct netfront_txq* malloc (int,int ,int) ;
 int mtx_init (int *,int ,char*,int ) ;
 int snprintf (int ,int ,char*,int) ;
 int taskqueue_create (int ,int,int ,int *) ;
 int taskqueue_drain_all (int ) ;
 int taskqueue_free (int ) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ,int) ;
 int taskqueue_thread_enqueue ;
 int virt_to_mfn (int *) ;
 int xen_intr_alloc_and_bind_local_port (int ,int ,int *,int ,struct netfront_txq*,int,int *) ;
 int xenbus_get_otherend_id (int ) ;
 int xenbus_grant_ring (int ,int ,void**) ;
 int xn_intr ;
 int xn_txq_tq_deferred ;

__attribute__((used)) static int
setup_txqs(device_t dev, struct netfront_info *info,
    unsigned long num_queues)
{
 int q, i;
 int error;
 netif_tx_sring_t *txs;
 struct netfront_txq *txq;

 info->txq = malloc(sizeof(struct netfront_txq) * num_queues,
     M_DEVBUF, M_WAITOK|M_ZERO);

 for (q = 0; q < num_queues; q++) {
  txq = &info->txq[q];

  txq->id = q;
  txq->info = info;

  txq->ring_ref = GRANT_REF_INVALID;
  txq->ring.sring = ((void*)0);

  snprintf(txq->name, XN_QUEUE_NAME_LEN, "xntx_%u", q);

  mtx_init(&txq->lock, txq->name, "netfront transmit lock",
      MTX_DEF);

  for (i = 0; i <= NET_TX_RING_SIZE; i++) {
   txq->mbufs[i] = (void *) ((u_long) i+1);
   txq->grant_ref[i] = GRANT_REF_INVALID;
  }
  txq->mbufs[NET_TX_RING_SIZE] = (void *)0;



  if (gnttab_alloc_grant_references(NET_TX_RING_SIZE,
      &txq->gref_head) != 0) {
   device_printf(dev, "failed to allocate tx grant refs\n");
   error = ENOMEM;
   goto fail;
  }

  txs = (netif_tx_sring_t *)malloc(PAGE_SIZE, M_DEVBUF,
      M_WAITOK|M_ZERO);
  SHARED_RING_INIT(txs);
  FRONT_RING_INIT(&txq->ring, txs, PAGE_SIZE);

  error = xenbus_grant_ring(dev, virt_to_mfn(txs),
      &txq->ring_ref);
  if (error != 0) {
   device_printf(dev, "failed to grant tx ring\n");
   goto fail_grant_ring;
  }

  txq->br = buf_ring_alloc(NET_TX_RING_SIZE, M_DEVBUF,
      M_WAITOK, &txq->lock);
  TASK_INIT(&txq->defrtask, 0, xn_txq_tq_deferred, txq);

  txq->tq = taskqueue_create(txq->name, M_WAITOK,
      taskqueue_thread_enqueue, &txq->tq);

  error = taskqueue_start_threads(&txq->tq, 1, PI_NET,
      "%s txq %d", device_get_nameunit(dev), txq->id);
  if (error != 0) {
   device_printf(dev, "failed to start tx taskq %d\n",
       txq->id);
   goto fail_start_thread;
  }

  error = xen_intr_alloc_and_bind_local_port(dev,
      xenbus_get_otherend_id(dev), ((void*)0), xn_intr,
      &info->txq[q], INTR_TYPE_NET | INTR_MPSAFE | INTR_ENTROPY,
      &txq->xen_intr_handle);

  if (error != 0) {
   device_printf(dev, "xen_intr_alloc_and_bind_local_port failed\n");
   goto fail_bind_port;
  }
 }

 return (0);

fail_bind_port:
 taskqueue_drain_all(txq->tq);
fail_start_thread:
 buf_ring_free(txq->br, M_DEVBUF);
 taskqueue_free(txq->tq);
 gnttab_end_foreign_access(txq->ring_ref, ((void*)0));
fail_grant_ring:
 gnttab_free_grant_references(txq->gref_head);
 free(txq->ring.sring, M_DEVBUF);
fail:
 for (; q >= 0; q--) {
  disconnect_txq(&info->txq[q]);
  destroy_txq(&info->txq[q]);
 }

 free(info->txq, M_DEVBUF);
 return (error);
}
