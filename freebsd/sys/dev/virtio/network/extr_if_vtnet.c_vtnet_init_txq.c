
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_id; int * vtntx_tq; int vtntx_name; int vtntx_intrtask; int vtntx_defrtask; int * vtntx_br; int vtntx_mtx; int * vtntx_sg; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {int vtnet_tx_nsegs; int vtnet_dev; struct vtnet_txq* vtnet_txqs; } ;


 int ENOMEM ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int TASK_INIT (int *,int ,int ,struct vtnet_txq*) ;
 int VTNET_DEFAULT_BUFRING_SIZE ;
 int * buf_ring_alloc (int ,int ,int ,int *) ;
 char* device_get_nameunit (int ) ;
 int mtx_init (int *,int ,int *,int ) ;
 int * sglist_alloc (int ,int ) ;
 int snprintf (int ,int,char*,char*,int) ;
 int * taskqueue_create (int ,int ,int ,int **) ;
 int taskqueue_thread_enqueue ;
 int vtnet_txq_tq_deferred ;
 int vtnet_txq_tq_intr ;

__attribute__((used)) static int
vtnet_init_txq(struct vtnet_softc *sc, int id)
{
 struct vtnet_txq *txq;

 txq = &sc->vtnet_txqs[id];

 snprintf(txq->vtntx_name, sizeof(txq->vtntx_name), "%s-tx%d",
     device_get_nameunit(sc->vtnet_dev), id);
 mtx_init(&txq->vtntx_mtx, txq->vtntx_name, ((void*)0), MTX_DEF);

 txq->vtntx_sc = sc;
 txq->vtntx_id = id;

 txq->vtntx_sg = sglist_alloc(sc->vtnet_tx_nsegs, M_NOWAIT);
 if (txq->vtntx_sg == ((void*)0))
  return (ENOMEM);


 txq->vtntx_br = buf_ring_alloc(VTNET_DEFAULT_BUFRING_SIZE, M_DEVBUF,
     M_NOWAIT, &txq->vtntx_mtx);
 if (txq->vtntx_br == ((void*)0))
  return (ENOMEM);

 TASK_INIT(&txq->vtntx_defrtask, 0, vtnet_txq_tq_deferred, txq);

 TASK_INIT(&txq->vtntx_intrtask, 0, vtnet_txq_tq_intr, txq);
 txq->vtntx_tq = taskqueue_create(txq->vtntx_name, M_NOWAIT,
     taskqueue_thread_enqueue, &txq->vtntx_tq);
 if (txq->vtntx_tq == ((void*)0))
  return (ENOMEM);

 return (0);
}
