#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct bge_mac_stats {scalar_t__ ifHCOutUcastPkts; scalar_t__ ifHCOutMulticastPkts; scalar_t__ ifHCOutBroadcastPkts; int /*<<< orphan*/  RecvThresholdHit; int /*<<< orphan*/  InputErrors; int /*<<< orphan*/  InputDiscards; int /*<<< orphan*/  NoMoreRxBDs; int /*<<< orphan*/  DmaWriteHighPriQueueFull; int /*<<< orphan*/  DmaWriteQueueFull; int /*<<< orphan*/  FramesDroppedDueToFilters; int /*<<< orphan*/  etherStatsUndersizePkts; int /*<<< orphan*/  etherStatsJabbers; int /*<<< orphan*/  dot3StatsFramesTooLong; int /*<<< orphan*/  xoffStateEntered; int /*<<< orphan*/  macControlFramesReceived; int /*<<< orphan*/  xoffPauseFramesReceived; int /*<<< orphan*/  xonPauseFramesReceived; int /*<<< orphan*/  dot3StatsAlignmentErrors; int /*<<< orphan*/  dot3StatsFCSErrors; int /*<<< orphan*/  ifHCInBroadcastPkts; int /*<<< orphan*/  ifHCInMulticastPkts; int /*<<< orphan*/  ifHCInUcastPkts; int /*<<< orphan*/  etherStatsFragments; int /*<<< orphan*/  ifHCInOctets; int /*<<< orphan*/  dot3StatsLateCollisions; int /*<<< orphan*/  dot3StatsExcessiveCollisions; int /*<<< orphan*/  dot3StatsDeferredTransmissions; int /*<<< orphan*/  dot3StatsMultipleCollisionFrames; int /*<<< orphan*/  dot3StatsSingleCollisionFrames; int /*<<< orphan*/  dot3StatsInternalMacTransmitErrors; int /*<<< orphan*/  outXoffSent; int /*<<< orphan*/  outXonSent; int /*<<< orphan*/  etherStatsCollisions; int /*<<< orphan*/  ifHCOutOctets; } ;
struct bge_softc {scalar_t__ bge_asicrev; scalar_t__ bge_chipid; int bge_flags; struct bge_mac_stats bge_mac_stats; int /*<<< orphan*/  bge_ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 scalar_t__ BGE_ASICREV_BCM5717 ; 
 scalar_t__ BGE_ASICREV_BCM5719 ; 
 scalar_t__ BGE_CHIPID_BCM5719_A0 ; 
 scalar_t__ BGE_CHIPID_BCM5720_A0 ; 
 int BGE_FLAG_RDMA_BUG ; 
 scalar_t__ BGE_NUM_RDMA_CHANNELS ; 
 int /*<<< orphan*/  BGE_RDMA_LSO_CRPTEN_CTRL ; 
 scalar_t__ BGE_RDMA_TX_LENGTH_WA_5719 ; 
 scalar_t__ BGE_RDMA_TX_LENGTH_WA_5720 ; 
 int /*<<< orphan*/  BGE_RXLP_LOCSTAT_DMA_HPWRQ_FULL ; 
 int /*<<< orphan*/  BGE_RXLP_LOCSTAT_DMA_WRQ_FULL ; 
 int /*<<< orphan*/  BGE_RXLP_LOCSTAT_FILTDROP ; 
 int /*<<< orphan*/  BGE_RXLP_LOCSTAT_IFIN_DROPS ; 
 int /*<<< orphan*/  BGE_RXLP_LOCSTAT_IFIN_ERRORS ; 
 int /*<<< orphan*/  BGE_RXLP_LOCSTAT_OUT_OF_BDS ; 
 int /*<<< orphan*/  BGE_RXLP_LOCSTAT_RXTHRESH_HIT ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_ALGIN_ERRORS ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_BCAST ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_CTRL_RCVD ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_FCS_ERRORS ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_FRAGMENTS ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_FRAME_TOO_LONG ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_JABBERS ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_MCAST ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_OCTESTS ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_UCAST ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_UNDERSIZE ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_XOFF_ENTERED ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_XOFF_RCVD ; 
 int /*<<< orphan*/  BGE_RX_MAC_STATS_XON_RCVD ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_BCAST ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_COLLS ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_DEFERRED ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_ERRORS ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_EXCESS_COLL ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_LATE_COLL ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_MCAST ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_MULTI_COLL ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_OCTETS ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_SINGLE_COLL ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_UCAST ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_XOFF_SENT ; 
 int /*<<< orphan*/  BGE_TX_MAC_STATS_XON_SENT ; 
 scalar_t__ FUNC0 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct bge_softc *sc)
{
	if_t ifp;
	struct bge_mac_stats *stats;
	uint32_t val;

	ifp = sc->bge_ifp;
	stats = &sc->bge_mac_stats;

	stats->ifHCOutOctets +=
	    FUNC0(sc, BGE_TX_MAC_STATS_OCTETS);
	stats->etherStatsCollisions +=
	    FUNC0(sc, BGE_TX_MAC_STATS_COLLS);
	stats->outXonSent +=
	    FUNC0(sc, BGE_TX_MAC_STATS_XON_SENT);
	stats->outXoffSent +=
	    FUNC0(sc, BGE_TX_MAC_STATS_XOFF_SENT);
	stats->dot3StatsInternalMacTransmitErrors +=
	    FUNC0(sc, BGE_TX_MAC_STATS_ERRORS);
	stats->dot3StatsSingleCollisionFrames +=
	    FUNC0(sc, BGE_TX_MAC_STATS_SINGLE_COLL);
	stats->dot3StatsMultipleCollisionFrames +=
	    FUNC0(sc, BGE_TX_MAC_STATS_MULTI_COLL);
	stats->dot3StatsDeferredTransmissions +=
	    FUNC0(sc, BGE_TX_MAC_STATS_DEFERRED);
	stats->dot3StatsExcessiveCollisions +=
	    FUNC0(sc, BGE_TX_MAC_STATS_EXCESS_COLL);
	stats->dot3StatsLateCollisions +=
	    FUNC0(sc, BGE_TX_MAC_STATS_LATE_COLL);
	stats->ifHCOutUcastPkts +=
	    FUNC0(sc, BGE_TX_MAC_STATS_UCAST);
	stats->ifHCOutMulticastPkts +=
	    FUNC0(sc, BGE_TX_MAC_STATS_MCAST);
	stats->ifHCOutBroadcastPkts +=
	    FUNC0(sc, BGE_TX_MAC_STATS_BCAST);

	stats->ifHCInOctets +=
	    FUNC0(sc, BGE_RX_MAC_STATS_OCTESTS);
	stats->etherStatsFragments +=
	    FUNC0(sc, BGE_RX_MAC_STATS_FRAGMENTS);
	stats->ifHCInUcastPkts +=
	    FUNC0(sc, BGE_RX_MAC_STATS_UCAST);
	stats->ifHCInMulticastPkts +=
	    FUNC0(sc, BGE_RX_MAC_STATS_MCAST);
	stats->ifHCInBroadcastPkts +=
	    FUNC0(sc, BGE_RX_MAC_STATS_BCAST);
	stats->dot3StatsFCSErrors +=
	    FUNC0(sc, BGE_RX_MAC_STATS_FCS_ERRORS);
	stats->dot3StatsAlignmentErrors +=
	    FUNC0(sc, BGE_RX_MAC_STATS_ALGIN_ERRORS);
	stats->xonPauseFramesReceived +=
	    FUNC0(sc, BGE_RX_MAC_STATS_XON_RCVD);
	stats->xoffPauseFramesReceived +=
	    FUNC0(sc, BGE_RX_MAC_STATS_XOFF_RCVD);
	stats->macControlFramesReceived +=
	    FUNC0(sc, BGE_RX_MAC_STATS_CTRL_RCVD);
	stats->xoffStateEntered +=
	    FUNC0(sc, BGE_RX_MAC_STATS_XOFF_ENTERED);
	stats->dot3StatsFramesTooLong +=
	    FUNC0(sc, BGE_RX_MAC_STATS_FRAME_TOO_LONG);
	stats->etherStatsJabbers +=
	    FUNC0(sc, BGE_RX_MAC_STATS_JABBERS);
	stats->etherStatsUndersizePkts +=
	    FUNC0(sc, BGE_RX_MAC_STATS_UNDERSIZE);

	stats->FramesDroppedDueToFilters +=
	    FUNC0(sc, BGE_RXLP_LOCSTAT_FILTDROP);
	stats->DmaWriteQueueFull +=
	    FUNC0(sc, BGE_RXLP_LOCSTAT_DMA_WRQ_FULL);
	stats->DmaWriteHighPriQueueFull +=
	    FUNC0(sc, BGE_RXLP_LOCSTAT_DMA_HPWRQ_FULL);
	stats->NoMoreRxBDs +=
	    FUNC0(sc, BGE_RXLP_LOCSTAT_OUT_OF_BDS);
	/*
	 * XXX
	 * Unlike other controllers, BGE_RXLP_LOCSTAT_IFIN_DROPS
	 * counter of BCM5717, BCM5718, BCM5719 A0 and BCM5720 A0
	 * includes number of unwanted multicast frames.  This comes
	 * from silicon bug and known workaround to get rough(not
	 * exact) counter is to enable interrupt on MBUF low water
	 * attention.  This can be accomplished by setting
	 * BGE_HCCMODE_ATTN bit of BGE_HCC_MODE,
	 * BGE_BMANMODE_LOMBUF_ATTN bit of BGE_BMAN_MODE and
	 * BGE_MODECTL_FLOWCTL_ATTN_INTR bit of BGE_MODE_CTL.
	 * However that change would generate more interrupts and
	 * there are still possibilities of losing multiple frames
	 * during BGE_MODECTL_FLOWCTL_ATTN_INTR interrupt handling.
	 * Given that the workaround still would not get correct
	 * counter I don't think it's worth to implement it.  So
	 * ignore reading the counter on controllers that have the
	 * silicon bug.
	 */
	if (sc->bge_asicrev != BGE_ASICREV_BCM5717 &&
	    sc->bge_chipid != BGE_CHIPID_BCM5719_A0 &&
	    sc->bge_chipid != BGE_CHIPID_BCM5720_A0)
		stats->InputDiscards +=
		    FUNC0(sc, BGE_RXLP_LOCSTAT_IFIN_DROPS);
	stats->InputErrors +=
	    FUNC0(sc, BGE_RXLP_LOCSTAT_IFIN_ERRORS);
	stats->RecvThresholdHit +=
	    FUNC0(sc, BGE_RXLP_LOCSTAT_RXTHRESH_HIT);

	if (sc->bge_flags & BGE_FLAG_RDMA_BUG) {
		/*
		 * If controller transmitted more than BGE_NUM_RDMA_CHANNELS
		 * frames, it's safe to disable workaround for DMA engine's
		 * miscalculation of TXMBUF space.
		 */
		if (stats->ifHCOutUcastPkts + stats->ifHCOutMulticastPkts +
		    stats->ifHCOutBroadcastPkts > BGE_NUM_RDMA_CHANNELS) {
			val = FUNC0(sc, BGE_RDMA_LSO_CRPTEN_CTRL);
			if (sc->bge_asicrev == BGE_ASICREV_BCM5719)
				val &= ~BGE_RDMA_TX_LENGTH_WA_5719;
			else
				val &= ~BGE_RDMA_TX_LENGTH_WA_5720;
			FUNC1(sc, BGE_RDMA_LSO_CRPTEN_CTRL, val);
			sc->bge_flags &= ~BGE_FLAG_RDMA_BUG;
		}
	}
}