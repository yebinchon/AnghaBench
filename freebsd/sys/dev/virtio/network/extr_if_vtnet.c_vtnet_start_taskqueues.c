
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_id; int vtntx_tq; } ;
struct vtnet_softc {int vtnet_max_vq_pairs; struct vtnet_txq* vtnet_txqs; struct vtnet_rxq* vtnet_rxqs; int vtnet_dev; } ;
struct vtnet_rxq {int vtnrx_id; int vtnrx_tq; } ;
typedef int device_t ;


 int PI_NET ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ,int ) ;

__attribute__((used)) static void
vtnet_start_taskqueues(struct vtnet_softc *sc)
{
 device_t dev;
 struct vtnet_rxq *rxq;
 struct vtnet_txq *txq;
 int i, error;

 dev = sc->vtnet_dev;
 for (i = 0; i < sc->vtnet_max_vq_pairs; i++) {
  rxq = &sc->vtnet_rxqs[i];
  error = taskqueue_start_threads(&rxq->vtnrx_tq, 1, PI_NET,
      "%s rxq %d", device_get_nameunit(dev), rxq->vtnrx_id);
  if (error) {
   device_printf(dev, "failed to start rx taskq %d\n",
       rxq->vtnrx_id);
  }

  txq = &sc->vtnet_txqs[i];
  error = taskqueue_start_threads(&txq->vtntx_tq, 1, PI_NET,
      "%s txq %d", device_get_nameunit(dev), txq->vtntx_id);
  if (error) {
   device_printf(dev, "failed to start tx taskq %d\n",
       txq->vtntx_id);
  }
 }
}
