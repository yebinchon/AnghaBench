
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bge_mac_stats {scalar_t__ ifHCOutUcastPkts; scalar_t__ ifHCOutMulticastPkts; scalar_t__ ifHCOutBroadcastPkts; int RecvThresholdHit; int InputErrors; int InputDiscards; int NoMoreRxBDs; int DmaWriteHighPriQueueFull; int DmaWriteQueueFull; int FramesDroppedDueToFilters; int etherStatsUndersizePkts; int etherStatsJabbers; int dot3StatsFramesTooLong; int xoffStateEntered; int macControlFramesReceived; int xoffPauseFramesReceived; int xonPauseFramesReceived; int dot3StatsAlignmentErrors; int dot3StatsFCSErrors; int ifHCInBroadcastPkts; int ifHCInMulticastPkts; int ifHCInUcastPkts; int etherStatsFragments; int ifHCInOctets; int dot3StatsLateCollisions; int dot3StatsExcessiveCollisions; int dot3StatsDeferredTransmissions; int dot3StatsMultipleCollisionFrames; int dot3StatsSingleCollisionFrames; int dot3StatsInternalMacTransmitErrors; int outXoffSent; int outXonSent; int etherStatsCollisions; int ifHCOutOctets; } ;
struct bge_softc {scalar_t__ bge_asicrev; scalar_t__ bge_chipid; int bge_flags; struct bge_mac_stats bge_mac_stats; int bge_ifp; } ;
typedef int if_t ;


 scalar_t__ BGE_ASICREV_BCM5717 ;
 scalar_t__ BGE_ASICREV_BCM5719 ;
 scalar_t__ BGE_CHIPID_BCM5719_A0 ;
 scalar_t__ BGE_CHIPID_BCM5720_A0 ;
 int BGE_FLAG_RDMA_BUG ;
 scalar_t__ BGE_NUM_RDMA_CHANNELS ;
 int BGE_RDMA_LSO_CRPTEN_CTRL ;
 scalar_t__ BGE_RDMA_TX_LENGTH_WA_5719 ;
 scalar_t__ BGE_RDMA_TX_LENGTH_WA_5720 ;
 int BGE_RXLP_LOCSTAT_DMA_HPWRQ_FULL ;
 int BGE_RXLP_LOCSTAT_DMA_WRQ_FULL ;
 int BGE_RXLP_LOCSTAT_FILTDROP ;
 int BGE_RXLP_LOCSTAT_IFIN_DROPS ;
 int BGE_RXLP_LOCSTAT_IFIN_ERRORS ;
 int BGE_RXLP_LOCSTAT_OUT_OF_BDS ;
 int BGE_RXLP_LOCSTAT_RXTHRESH_HIT ;
 int BGE_RX_MAC_STATS_ALGIN_ERRORS ;
 int BGE_RX_MAC_STATS_BCAST ;
 int BGE_RX_MAC_STATS_CTRL_RCVD ;
 int BGE_RX_MAC_STATS_FCS_ERRORS ;
 int BGE_RX_MAC_STATS_FRAGMENTS ;
 int BGE_RX_MAC_STATS_FRAME_TOO_LONG ;
 int BGE_RX_MAC_STATS_JABBERS ;
 int BGE_RX_MAC_STATS_MCAST ;
 int BGE_RX_MAC_STATS_OCTESTS ;
 int BGE_RX_MAC_STATS_UCAST ;
 int BGE_RX_MAC_STATS_UNDERSIZE ;
 int BGE_RX_MAC_STATS_XOFF_ENTERED ;
 int BGE_RX_MAC_STATS_XOFF_RCVD ;
 int BGE_RX_MAC_STATS_XON_RCVD ;
 int BGE_TX_MAC_STATS_BCAST ;
 int BGE_TX_MAC_STATS_COLLS ;
 int BGE_TX_MAC_STATS_DEFERRED ;
 int BGE_TX_MAC_STATS_ERRORS ;
 int BGE_TX_MAC_STATS_EXCESS_COLL ;
 int BGE_TX_MAC_STATS_LATE_COLL ;
 int BGE_TX_MAC_STATS_MCAST ;
 int BGE_TX_MAC_STATS_MULTI_COLL ;
 int BGE_TX_MAC_STATS_OCTETS ;
 int BGE_TX_MAC_STATS_SINGLE_COLL ;
 int BGE_TX_MAC_STATS_UCAST ;
 int BGE_TX_MAC_STATS_XOFF_SENT ;
 int BGE_TX_MAC_STATS_XON_SENT ;
 scalar_t__ CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,scalar_t__) ;

__attribute__((used)) static void
bge_stats_update_regs(struct bge_softc *sc)
{
 if_t ifp;
 struct bge_mac_stats *stats;
 uint32_t val;

 ifp = sc->bge_ifp;
 stats = &sc->bge_mac_stats;

 stats->ifHCOutOctets +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_OCTETS);
 stats->etherStatsCollisions +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_COLLS);
 stats->outXonSent +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_XON_SENT);
 stats->outXoffSent +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_XOFF_SENT);
 stats->dot3StatsInternalMacTransmitErrors +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_ERRORS);
 stats->dot3StatsSingleCollisionFrames +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_SINGLE_COLL);
 stats->dot3StatsMultipleCollisionFrames +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_MULTI_COLL);
 stats->dot3StatsDeferredTransmissions +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_DEFERRED);
 stats->dot3StatsExcessiveCollisions +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_EXCESS_COLL);
 stats->dot3StatsLateCollisions +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_LATE_COLL);
 stats->ifHCOutUcastPkts +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_UCAST);
 stats->ifHCOutMulticastPkts +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_MCAST);
 stats->ifHCOutBroadcastPkts +=
     CSR_READ_4(sc, BGE_TX_MAC_STATS_BCAST);

 stats->ifHCInOctets +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_OCTESTS);
 stats->etherStatsFragments +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_FRAGMENTS);
 stats->ifHCInUcastPkts +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_UCAST);
 stats->ifHCInMulticastPkts +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_MCAST);
 stats->ifHCInBroadcastPkts +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_BCAST);
 stats->dot3StatsFCSErrors +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_FCS_ERRORS);
 stats->dot3StatsAlignmentErrors +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_ALGIN_ERRORS);
 stats->xonPauseFramesReceived +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_XON_RCVD);
 stats->xoffPauseFramesReceived +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_XOFF_RCVD);
 stats->macControlFramesReceived +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_CTRL_RCVD);
 stats->xoffStateEntered +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_XOFF_ENTERED);
 stats->dot3StatsFramesTooLong +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_FRAME_TOO_LONG);
 stats->etherStatsJabbers +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_JABBERS);
 stats->etherStatsUndersizePkts +=
     CSR_READ_4(sc, BGE_RX_MAC_STATS_UNDERSIZE);

 stats->FramesDroppedDueToFilters +=
     CSR_READ_4(sc, BGE_RXLP_LOCSTAT_FILTDROP);
 stats->DmaWriteQueueFull +=
     CSR_READ_4(sc, BGE_RXLP_LOCSTAT_DMA_WRQ_FULL);
 stats->DmaWriteHighPriQueueFull +=
     CSR_READ_4(sc, BGE_RXLP_LOCSTAT_DMA_HPWRQ_FULL);
 stats->NoMoreRxBDs +=
     CSR_READ_4(sc, BGE_RXLP_LOCSTAT_OUT_OF_BDS);
 if (sc->bge_asicrev != BGE_ASICREV_BCM5717 &&
     sc->bge_chipid != BGE_CHIPID_BCM5719_A0 &&
     sc->bge_chipid != BGE_CHIPID_BCM5720_A0)
  stats->InputDiscards +=
      CSR_READ_4(sc, BGE_RXLP_LOCSTAT_IFIN_DROPS);
 stats->InputErrors +=
     CSR_READ_4(sc, BGE_RXLP_LOCSTAT_IFIN_ERRORS);
 stats->RecvThresholdHit +=
     CSR_READ_4(sc, BGE_RXLP_LOCSTAT_RXTHRESH_HIT);

 if (sc->bge_flags & BGE_FLAG_RDMA_BUG) {





  if (stats->ifHCOutUcastPkts + stats->ifHCOutMulticastPkts +
      stats->ifHCOutBroadcastPkts > BGE_NUM_RDMA_CHANNELS) {
   val = CSR_READ_4(sc, BGE_RDMA_LSO_CRPTEN_CTRL);
   if (sc->bge_asicrev == BGE_ASICREV_BCM5719)
    val &= ~BGE_RDMA_TX_LENGTH_WA_5719;
   else
    val &= ~BGE_RDMA_TX_LENGTH_WA_5720;
   CSR_WRITE_4(sc, BGE_RDMA_LSO_CRPTEN_CTRL, val);
   sc->bge_flags &= ~BGE_FLAG_RDMA_BUG;
  }
 }
}
