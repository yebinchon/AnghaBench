
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_tx_data {int * ni; int * m; } ;
struct run_softc {int dummy; } ;
struct run_endpoint_queue {struct run_tx_data* tx_data; int tx_qh; int tx_fh; scalar_t__ tx_nfree; } ;


 size_t RUN_TX_RING_COUNT ;
 int STAILQ_INIT (int *) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
run_unsetup_tx_list(struct run_softc *sc, struct run_endpoint_queue *pq)
{
 struct run_tx_data *data;


 pq->tx_nfree = 0;
 STAILQ_INIT(&pq->tx_fh);
 STAILQ_INIT(&pq->tx_qh);


 for (data = &pq->tx_data[0];
     data < &pq->tx_data[RUN_TX_RING_COUNT]; data++) {
  if (data->m != ((void*)0)) {
   m_freem(data->m);
   data->m = ((void*)0);
  }
  if (data->ni != ((void*)0)) {
   ieee80211_free_node(data->ni);
   data->ni = ((void*)0);
  }
 }
}
