
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct netfront_txq {int dummy; } ;
struct netfront_rxq {int dummy; } ;
struct netfront_info {int num_queues; struct netfront_rxq* rxq; struct netfront_txq* txq; int xbdev; } ;


 int EPROTONOSUPPORT ;
 int XST_NIL ;
 int netfront_carrier_on (struct netfront_info*) ;
 int talk_to_backend (int ,struct netfront_info*) ;
 int wakeup (struct netfront_info*) ;
 int xenbus_get_otherend_path (int ) ;
 int xn_configure_features (struct netfront_info*) ;
 int xn_query_features (struct netfront_info*) ;
 int xn_rebuild_rx_bufs (struct netfront_rxq*) ;
 int xn_release_tx_bufs (struct netfront_txq*) ;
 int xs_scanf (int ,int ,char*,int *,char*,scalar_t__*) ;

__attribute__((used)) static int
xn_connect(struct netfront_info *np)
{
 int i, error;
 u_int feature_rx_copy;
 struct netfront_rxq *rxq;
 struct netfront_txq *txq;

 error = xs_scanf(XST_NIL, xenbus_get_otherend_path(np->xbdev),
     "feature-rx-copy", ((void*)0), "%u", &feature_rx_copy);
 if (error != 0)
  feature_rx_copy = 0;


 if (!feature_rx_copy)
  return (EPROTONOSUPPORT);


 error = talk_to_backend(np->xbdev, np);
 if (error != 0)
  return (error);


 xn_query_features(np);
 xn_configure_features(np);


 for (i = 0; i < np->num_queues; i++) {
  txq = &np->txq[i];
  xn_release_tx_bufs(txq);
 }


 for (i = 0; i < np->num_queues; i++) {
  rxq = &np->rxq[i];
  xn_rebuild_rx_bufs(rxq);
 }






 netfront_carrier_on(np);
 wakeup(np);

 return (0);
}
