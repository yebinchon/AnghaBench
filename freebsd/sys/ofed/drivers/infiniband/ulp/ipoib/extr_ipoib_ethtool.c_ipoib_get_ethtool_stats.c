
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int aggregated; int flushed; int no_desc; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
struct TYPE_6__ {TYPE_2__ lro_mgr; } ;
struct ipoib_dev_priv {TYPE_3__ lro; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;
struct ethtool_stats {int dummy; } ;



__attribute__((used)) static void ipoib_get_ethtool_stats(struct ifnet *dev,
    struct ethtool_stats *stats, uint64_t *data)
{
 struct ipoib_dev_priv *priv = dev->if_softc;
 int index = 0;


 data[index++] = priv->lro.lro_mgr.stats.aggregated;
 data[index++] = priv->lro.lro_mgr.stats.flushed;
 if (priv->lro.lro_mgr.stats.flushed)
  data[index++] = priv->lro.lro_mgr.stats.aggregated /
    priv->lro.lro_mgr.stats.flushed;
 else
  data[index++] = 0;
 data[index++] = priv->lro.lro_mgr.stats.no_desc;
}
