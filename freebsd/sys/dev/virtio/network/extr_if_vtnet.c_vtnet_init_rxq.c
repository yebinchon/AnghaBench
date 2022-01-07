
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_rx_nsegs; int vtnet_dev; struct vtnet_rxq* vtnet_rxqs; } ;
struct vtnet_rxq {int vtnrx_id; int * vtnrx_tq; int vtnrx_name; int vtnrx_intrtask; int * vtnrx_sg; struct vtnet_softc* vtnrx_sc; int vtnrx_mtx; } ;


 int ENOMEM ;
 int MTX_DEF ;
 int M_NOWAIT ;
 int TASK_INIT (int *,int ,int ,struct vtnet_rxq*) ;
 char* device_get_nameunit (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int * sglist_alloc (int ,int ) ;
 int snprintf (int ,int,char*,char*,int) ;
 int * taskqueue_create (int ,int ,int ,int **) ;
 int taskqueue_thread_enqueue ;
 int vtnet_rxq_tq_intr ;

__attribute__((used)) static int
vtnet_init_rxq(struct vtnet_softc *sc, int id)
{
 struct vtnet_rxq *rxq;

 rxq = &sc->vtnet_rxqs[id];

 snprintf(rxq->vtnrx_name, sizeof(rxq->vtnrx_name), "%s-rx%d",
     device_get_nameunit(sc->vtnet_dev), id);
 mtx_init(&rxq->vtnrx_mtx, rxq->vtnrx_name, ((void*)0), MTX_DEF);

 rxq->vtnrx_sc = sc;
 rxq->vtnrx_id = id;

 rxq->vtnrx_sg = sglist_alloc(sc->vtnet_rx_nsegs, M_NOWAIT);
 if (rxq->vtnrx_sg == ((void*)0))
  return (ENOMEM);

 TASK_INIT(&rxq->vtnrx_intrtask, 0, vtnet_rxq_tq_intr, rxq);
 rxq->vtnrx_tq = taskqueue_create(rxq->vtnrx_name, M_NOWAIT,
     taskqueue_thread_enqueue, &rxq->vtnrx_tq);

 return (rxq->vtnrx_tq == ((void*)0) ? ENOMEM : 0);
}
