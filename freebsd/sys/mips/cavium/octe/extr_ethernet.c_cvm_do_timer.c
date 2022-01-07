
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_4__ {TYPE_3__* ifp; int * tx_free_queue; scalar_t__ fau; int link_task; scalar_t__ need_link_update; } ;
typedef TYPE_1__ cvm_oct_private_t ;
struct TYPE_6__ {int if_drv_flags; } ;
struct TYPE_5__ {scalar_t__ if_softc; } ;


 int CVMX_PIP_NUM_INPUT_PORTS ;
 int IFF_DRV_OACTIVE ;
 int IF_LOCK (int *) ;
 int IF_UNLOCK (int *) ;
 int _IF_DEQUEUE (int *,struct mbuf*) ;
 scalar_t__ _IF_QLEN (int *) ;
 int callout_reset (int *,int,void (*) (void*),int *) ;
 int cvm_oct_common_poll (TYPE_3__*) ;
 TYPE_2__** cvm_oct_device ;
 int cvm_oct_link_taskq ;
 int cvm_oct_poll_timer ;
 scalar_t__ cvmx_fau_fetch_and_add32 (scalar_t__,int ) ;
 int cvmx_pko_get_num_queues (int) ;
 int hz ;
 int m_freem (struct mbuf*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void cvm_do_timer(void *arg)
{
 static int port;
 static int updated;
 if (port < CVMX_PIP_NUM_INPUT_PORTS) {
  if (cvm_oct_device[port]) {
   int queues_per_port;
   int qos;
   cvm_oct_private_t *priv = (cvm_oct_private_t *)cvm_oct_device[port]->if_softc;

   cvm_oct_common_poll(priv->ifp);
   if (priv->need_link_update) {
    updated++;
    taskqueue_enqueue(cvm_oct_link_taskq, &priv->link_task);
   }

   queues_per_port = cvmx_pko_get_num_queues(port);

   for (qos = 0; qos < queues_per_port; qos++) {
    if (_IF_QLEN(&priv->tx_free_queue[qos]) > 0) {
     IF_LOCK(&priv->tx_free_queue[qos]);
     while (_IF_QLEN(&priv->tx_free_queue[qos]) > cvmx_fau_fetch_and_add32(priv->fau+qos*4, 0)) {
      struct mbuf *m;

      _IF_DEQUEUE(&priv->tx_free_queue[qos], m);
      m_freem(m);
     }
     IF_UNLOCK(&priv->tx_free_queue[qos]);




     priv->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
    }
   }
  }
  port++;


  callout_reset(&cvm_oct_poll_timer, hz / 50, cvm_do_timer, ((void*)0));
 } else {
  port = 0;





  if (updated > 0) {
   updated = 0;
   callout_reset(&cvm_oct_poll_timer, hz / 50, cvm_do_timer, ((void*)0));
  } else {


   callout_reset(&cvm_oct_poll_timer, hz, cvm_do_timer, ((void*)0));
  }
 }
}
