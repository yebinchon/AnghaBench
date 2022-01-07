
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_coalesced_frames; int coalesce_usecs; } ;
struct ipoib_dev_priv {TYPE_1__ ethtool; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int rx_max_coalesced_frames; int tx_coalesce_usecs; int rx_coalesce_usecs; } ;



__attribute__((used)) static int ipoib_get_coalesce(struct ifnet *dev,
         struct ethtool_coalesce *coal)
{
 struct ipoib_dev_priv *priv = dev->if_softc;

 coal->rx_coalesce_usecs = priv->ethtool.coalesce_usecs;
 coal->tx_coalesce_usecs = priv->ethtool.coalesce_usecs;
 coal->rx_max_coalesced_frames = priv->ethtool.max_coalesced_frames;
 coal->tx_max_coalesced_frames = priv->ethtool.max_coalesced_frames;

 return 0;
}
