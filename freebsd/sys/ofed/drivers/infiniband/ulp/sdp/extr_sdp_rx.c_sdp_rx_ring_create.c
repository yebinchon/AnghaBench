
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * buffer; int tail; int head; } ;
struct sdp_sock {TYPE_2__ rx_ring; int socket; int rx_comp_work; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; int flags; int comp_vector; } ;
struct ib_cq {int dummy; } ;
struct TYPE_4__ {struct ib_cq* cq; } ;
struct TYPE_6__ {TYPE_1__ rx_ring; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct ib_cq*) ;
 int M_SDP ;
 int M_WAITOK ;
 int PTR_ERR (struct ib_cq*) ;
 int SDP_RX_SIZE ;
 int atomic_set (int *,int) ;
 int free (int *,int ) ;
 struct ib_cq* ib_create_cq (struct ib_device*,int ,int ,struct sdp_sock*,struct ib_cq_init_attr*) ;
 int * malloc (int,int ,int ) ;
 int sdp_arm_rx_cq (struct sdp_sock*) ;
 int sdp_dbg (int ,char*) ;
 int sdp_rx_comp_work ;
 int sdp_rx_cq_event_handler ;
 int sdp_rx_irq ;
 TYPE_3__* sdp_sk (int ) ;
 int sdp_warn (int ,char*,int) ;

int
sdp_rx_ring_create(struct sdp_sock *ssk, struct ib_device *device)
{
 struct ib_cq_init_attr rx_cq_attr = {
  .cqe = SDP_RX_SIZE,
  .comp_vector = 0,
  .flags = 0,
 };
 struct ib_cq *rx_cq;
 int rc = 0;

 sdp_dbg(ssk->socket, "rx ring created");
 INIT_WORK(&ssk->rx_comp_work, sdp_rx_comp_work);
 atomic_set(&ssk->rx_ring.head, 1);
 atomic_set(&ssk->rx_ring.tail, 1);

 ssk->rx_ring.buffer = malloc(sizeof(*ssk->rx_ring.buffer) * SDP_RX_SIZE,
     M_SDP, M_WAITOK);

 rx_cq = ib_create_cq(device, sdp_rx_irq, sdp_rx_cq_event_handler,
     ssk, &rx_cq_attr);
 if (IS_ERR(rx_cq)) {
  rc = PTR_ERR(rx_cq);
  sdp_warn(ssk->socket, "Unable to allocate RX CQ: %d.\n", rc);
  goto err_cq;
 }

 sdp_sk(ssk->socket)->rx_ring.cq = rx_cq;
 sdp_arm_rx_cq(ssk);

 return 0;

err_cq:
 free(ssk->rx_ring.buffer, M_SDP);
 ssk->rx_ring.buffer = ((void*)0);
 return rc;
}
