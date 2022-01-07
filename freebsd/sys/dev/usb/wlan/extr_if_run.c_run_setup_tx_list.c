
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_tx_data {struct run_softc* sc; } ;
struct run_softc {int dummy; } ;
struct run_endpoint_queue {size_t tx_nfree; int tx_fh; struct run_tx_data* tx_data; int tx_qh; } ;


 size_t RUN_TX_RING_COUNT ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct run_tx_data*,int ) ;
 int memset (struct run_endpoint_queue*,int ,int) ;
 int next ;

__attribute__((used)) static void
run_setup_tx_list(struct run_softc *sc, struct run_endpoint_queue *pq)
{
 struct run_tx_data *data;

 memset(pq, 0, sizeof(*pq));

 STAILQ_INIT(&pq->tx_qh);
 STAILQ_INIT(&pq->tx_fh);

 for (data = &pq->tx_data[0];
     data < &pq->tx_data[RUN_TX_RING_COUNT]; data++) {
  data->sc = sc;
  STAILQ_INSERT_TAIL(&pq->tx_fh, data, next);
 }
 pq->tx_nfree = RUN_TX_RING_COUNT;
}
