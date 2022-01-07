
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_tx_data {int * ni; int * m; } ;
struct run_endpoint_queue {int tx_nfree; int tx_fh; } ;


 int STAILQ_INSERT_TAIL (int *,struct run_tx_data*,int ) ;
 int ieee80211_tx_complete (int *,int *,int) ;
 int next ;

__attribute__((used)) static void
run_tx_free(struct run_endpoint_queue *pq,
    struct run_tx_data *data, int txerr)
{

 ieee80211_tx_complete(data->ni, data->m, txerr);

 data->m = ((void*)0);
 data->ni = ((void*)0);

 STAILQ_INSERT_TAIL(&pq->tx_fh, data, next);
 pq->tx_nfree++;
}
