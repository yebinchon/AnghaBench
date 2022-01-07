
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ifnet {int dummy; } ;
struct al_eth_mac_stats {scalar_t__ ifOutErrors; scalar_t__ aAlignmentErrors; scalar_t__ aFrameCheckSequenceErrors; scalar_t__ etherStatsOversizePkts; scalar_t__ etherStatsJabbers; scalar_t__ etherStatsFragments; scalar_t__ etherStatsUndersizePkts; scalar_t__ ifInErrors; scalar_t__ etherStatsDropEvents; scalar_t__ ifOutMulticastPkts; scalar_t__ ifInMulticastPkts; scalar_t__ aOctetsTransmittedOK; scalar_t__ aOctetsReceivedOK; scalar_t__ aFramesTransmittedOK; scalar_t__ aFramesReceivedOK; } ;
struct al_eth_adapter {struct al_eth_mac_stats mac_stats; } ;
typedef int ift_counter ;
 scalar_t__ if_get_counter_default (struct ifnet*,int) ;
 struct al_eth_adapter* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static uint64_t
al_get_counter(struct ifnet *ifp, ift_counter cnt)
{
 struct al_eth_adapter *adapter;
 struct al_eth_mac_stats *mac_stats;
 uint64_t rv;

 adapter = if_getsoftc(ifp);
 mac_stats = &adapter->mac_stats;

 switch (cnt) {
 case 133:
  return (mac_stats->aFramesReceivedOK);
 case 128:
  return (mac_stats->aFramesTransmittedOK);
 case 136:
  return (mac_stats->aOctetsReceivedOK);
 case 131:
  return (mac_stats->aOctetsTransmittedOK);
 case 134:
  return (mac_stats->ifInMulticastPkts);
 case 129:
  return (mac_stats->ifOutMulticastPkts);
 case 137:
  return (0);
 case 132:
  return (mac_stats->etherStatsDropEvents);
 case 135:
  rv = mac_stats->ifInErrors +
      mac_stats->etherStatsUndersizePkts +
      mac_stats->etherStatsFragments +
      mac_stats->etherStatsJabbers +
      mac_stats->etherStatsOversizePkts +
      mac_stats->aFrameCheckSequenceErrors +
      mac_stats->aAlignmentErrors;
  return (rv);
 case 130:
  return (mac_stats->ifOutErrors);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
