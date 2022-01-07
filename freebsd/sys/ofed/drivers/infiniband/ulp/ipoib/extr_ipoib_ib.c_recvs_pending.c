
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipoib_dev_priv {TYPE_1__* rx_ring; } ;
struct TYPE_2__ {scalar_t__ mb; } ;


 int ipoib_recvq_size ;

__attribute__((used)) static int recvs_pending(struct ipoib_dev_priv *priv)
{
 int pending = 0;
 int i;

 for (i = 0; i < ipoib_recvq_size; ++i)
  if (priv->rx_ring[i].mb)
   ++pending;

 return pending;
}
