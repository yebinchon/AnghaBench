
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct netfront_rxq* sring; } ;
struct netfront_rxq {int id; TYPE_1__ ring; int gref_head; int rx_refill; void* ring_ref; void** grant_ref; int ** mbufs; int name; int lock; struct netfront_info* info; } ;
struct netfront_info {struct netfront_rxq* rxq; } ;
typedef int netif_rx_sring_t ;
typedef int device_t ;


 int ENOMEM ;
 int FRONT_RING_INIT (TYPE_1__*,int *,int) ;
 void* GRANT_REF_INVALID ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NET_RX_RING_SIZE ;
 int PAGE_SIZE ;
 int SHARED_RING_INIT (int *) ;
 int XN_QUEUE_NAME_LEN ;
 int callout_init (int *,int) ;
 int destroy_rxq (struct netfront_rxq*) ;
 int device_printf (int ,char*) ;
 int disconnect_rxq (struct netfront_rxq*) ;
 int free (struct netfront_rxq*,int ) ;
 scalar_t__ gnttab_alloc_grant_references (int,int *) ;
 int gnttab_free_grant_references (int ) ;
 struct netfront_rxq* malloc (int,int ,int) ;
 int mtx_init (int *,int ,char*,int ) ;
 int snprintf (int ,int ,char*,int) ;
 int virt_to_mfn (int *) ;
 int xenbus_grant_ring (int ,int ,void**) ;

__attribute__((used)) static int
setup_rxqs(device_t dev, struct netfront_info *info,
    unsigned long num_queues)
{
 int q, i;
 int error;
 netif_rx_sring_t *rxs;
 struct netfront_rxq *rxq;

 info->rxq = malloc(sizeof(struct netfront_rxq) * num_queues,
     M_DEVBUF, M_WAITOK|M_ZERO);

 for (q = 0; q < num_queues; q++) {
  rxq = &info->rxq[q];

  rxq->id = q;
  rxq->info = info;
  rxq->ring_ref = GRANT_REF_INVALID;
  rxq->ring.sring = ((void*)0);
  snprintf(rxq->name, XN_QUEUE_NAME_LEN, "xnrx_%u", q);
  mtx_init(&rxq->lock, rxq->name, "netfront receive lock",
      MTX_DEF);

  for (i = 0; i <= NET_RX_RING_SIZE; i++) {
   rxq->mbufs[i] = ((void*)0);
   rxq->grant_ref[i] = GRANT_REF_INVALID;
  }



  if (gnttab_alloc_grant_references(NET_RX_RING_SIZE,
      &rxq->gref_head) != 0) {
   device_printf(dev, "allocating rx gref");
   error = ENOMEM;
   goto fail;
  }

  rxs = (netif_rx_sring_t *)malloc(PAGE_SIZE, M_DEVBUF,
      M_WAITOK|M_ZERO);
  SHARED_RING_INIT(rxs);
  FRONT_RING_INIT(&rxq->ring, rxs, PAGE_SIZE);

  error = xenbus_grant_ring(dev, virt_to_mfn(rxs),
      &rxq->ring_ref);
  if (error != 0) {
   device_printf(dev, "granting rx ring page");
   goto fail_grant_ring;
  }

  callout_init(&rxq->rx_refill, 1);
 }

 return (0);

fail_grant_ring:
 gnttab_free_grant_references(rxq->gref_head);
 free(rxq->ring.sring, M_DEVBUF);
fail:
 for (; q >= 0; q--) {
  disconnect_rxq(&info->rxq[q]);
  destroy_rxq(&info->rxq[q]);
 }

 free(info->rxq, M_DEVBUF);
 return (error);
}
