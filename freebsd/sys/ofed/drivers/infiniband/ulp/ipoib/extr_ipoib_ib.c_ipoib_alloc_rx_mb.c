
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ipoib_dev_priv {scalar_t__ max_ib_mtu; int * rx_ring; } ;


 scalar_t__ IB_GRH_BYTES ;
 struct mbuf* ipoib_alloc_map_mb (struct ipoib_dev_priv*,int *,scalar_t__) ;

__attribute__((used)) static struct mbuf *
ipoib_alloc_rx_mb(struct ipoib_dev_priv *priv, int id)
{

 return ipoib_alloc_map_mb(priv, &priv->rx_ring[id],
     priv->max_ib_mtu + IB_GRH_BYTES);
}
