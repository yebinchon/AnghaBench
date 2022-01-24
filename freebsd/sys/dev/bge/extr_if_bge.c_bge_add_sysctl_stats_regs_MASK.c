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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bge_mac_stats {int /*<<< orphan*/  ifHCOutBroadcastPkts; int /*<<< orphan*/  ifHCOutMulticastPkts; int /*<<< orphan*/  ifHCOutUcastPkts; int /*<<< orphan*/  dot3StatsLateCollisions; int /*<<< orphan*/  dot3StatsExcessiveCollisions; int /*<<< orphan*/  dot3StatsDeferredTransmissions; int /*<<< orphan*/  dot3StatsMultipleCollisionFrames; int /*<<< orphan*/  dot3StatsSingleCollisionFrames; int /*<<< orphan*/  dot3StatsInternalMacTransmitErrors; int /*<<< orphan*/  outXoffSent; int /*<<< orphan*/  outXonSent; int /*<<< orphan*/  etherStatsCollisions; int /*<<< orphan*/  ifHCOutOctets; int /*<<< orphan*/  etherStatsUndersizePkts; int /*<<< orphan*/  etherStatsJabbers; int /*<<< orphan*/  dot3StatsFramesTooLong; int /*<<< orphan*/  xoffStateEntered; int /*<<< orphan*/  macControlFramesReceived; int /*<<< orphan*/  xoffPauseFramesReceived; int /*<<< orphan*/  xonPauseFramesReceived; int /*<<< orphan*/  dot3StatsAlignmentErrors; int /*<<< orphan*/  dot3StatsFCSErrors; int /*<<< orphan*/  ifHCInBroadcastPkts; int /*<<< orphan*/  ifHCInMulticastPkts; int /*<<< orphan*/  ifHCInUcastPkts; int /*<<< orphan*/  etherStatsFragments; int /*<<< orphan*/  ifHCInOctets; int /*<<< orphan*/  RecvThresholdHit; int /*<<< orphan*/  InputErrors; int /*<<< orphan*/  InputDiscards; int /*<<< orphan*/  NoMoreRxBDs; int /*<<< orphan*/  DmaWriteHighPriQueueFull; int /*<<< orphan*/  DmaWriteQueueFull; int /*<<< orphan*/  FramesDroppedDueToFilters; } ;
struct bge_softc {struct bge_mac_stats bge_mac_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 

__attribute__((used)) static void
FUNC3(struct bge_softc *sc, struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *parent)
{
	struct sysctl_oid *tree;
	struct sysctl_oid_list *child, *schild;
	struct bge_mac_stats *stats;

	stats = &sc->bge_mac_stats;
	tree = FUNC1(ctx, parent, OID_AUTO, "stats", CTLFLAG_RD,
	    NULL, "BGE Statistics");
	schild = child = FUNC2(tree);
	FUNC0(ctx, child, "FramesDroppedDueToFilters",
	    &stats->FramesDroppedDueToFilters, "Frames Dropped Due to Filters");
	FUNC0(ctx, child, "DmaWriteQueueFull",
	    &stats->DmaWriteQueueFull, "NIC DMA Write Queue Full");
	FUNC0(ctx, child, "DmaWriteHighPriQueueFull",
	    &stats->DmaWriteHighPriQueueFull,
	    "NIC DMA Write High Priority Queue Full");
	FUNC0(ctx, child, "NoMoreRxBDs",
	    &stats->NoMoreRxBDs, "NIC No More RX Buffer Descriptors");
	FUNC0(ctx, child, "InputDiscards",
	    &stats->InputDiscards, "Discarded Input Frames");
	FUNC0(ctx, child, "InputErrors",
	    &stats->InputErrors, "Input Errors");
	FUNC0(ctx, child, "RecvThresholdHit",
	    &stats->RecvThresholdHit, "NIC Recv Threshold Hit");

	tree = FUNC1(ctx, schild, OID_AUTO, "rx", CTLFLAG_RD,
	    NULL, "BGE RX Statistics");
	child = FUNC2(tree);
	FUNC0(ctx, child, "ifHCInOctets",
	    &stats->ifHCInOctets, "Inbound Octets");
	FUNC0(ctx, child, "Fragments",
	    &stats->etherStatsFragments, "Fragments");
	FUNC0(ctx, child, "UnicastPkts",
	    &stats->ifHCInUcastPkts, "Inbound Unicast Packets");
	FUNC0(ctx, child, "MulticastPkts",
	    &stats->ifHCInMulticastPkts, "Inbound Multicast Packets");
	FUNC0(ctx, child, "BroadcastPkts",
	    &stats->ifHCInBroadcastPkts, "Inbound Broadcast Packets");
	FUNC0(ctx, child, "FCSErrors",
	    &stats->dot3StatsFCSErrors, "FCS Errors");
	FUNC0(ctx, child, "AlignmentErrors",
	    &stats->dot3StatsAlignmentErrors, "Alignment Errors");
	FUNC0(ctx, child, "xonPauseFramesReceived",
	    &stats->xonPauseFramesReceived, "XON Pause Frames Received");
	FUNC0(ctx, child, "xoffPauseFramesReceived",
	    &stats->xoffPauseFramesReceived, "XOFF Pause Frames Received");
	FUNC0(ctx, child, "ControlFramesReceived",
	    &stats->macControlFramesReceived, "MAC Control Frames Received");
	FUNC0(ctx, child, "xoffStateEntered",
	    &stats->xoffStateEntered, "XOFF State Entered");
	FUNC0(ctx, child, "FramesTooLong",
	    &stats->dot3StatsFramesTooLong, "Frames Too Long");
	FUNC0(ctx, child, "Jabbers",
	    &stats->etherStatsJabbers, "Jabbers");
	FUNC0(ctx, child, "UndersizePkts",
	    &stats->etherStatsUndersizePkts, "Undersized Packets");

	tree = FUNC1(ctx, schild, OID_AUTO, "tx", CTLFLAG_RD,
	    NULL, "BGE TX Statistics");
	child = FUNC2(tree);
	FUNC0(ctx, child, "ifHCOutOctets",
	    &stats->ifHCOutOctets, "Outbound Octets");
	FUNC0(ctx, child, "Collisions",
	    &stats->etherStatsCollisions, "TX Collisions");
	FUNC0(ctx, child, "XonSent",
	    &stats->outXonSent, "XON Sent");
	FUNC0(ctx, child, "XoffSent",
	    &stats->outXoffSent, "XOFF Sent");
	FUNC0(ctx, child, "InternalMacTransmitErrors",
	    &stats->dot3StatsInternalMacTransmitErrors,
	    "Internal MAC TX Errors");
	FUNC0(ctx, child, "SingleCollisionFrames",
	    &stats->dot3StatsSingleCollisionFrames, "Single Collision Frames");
	FUNC0(ctx, child, "MultipleCollisionFrames",
	    &stats->dot3StatsMultipleCollisionFrames,
	    "Multiple Collision Frames");
	FUNC0(ctx, child, "DeferredTransmissions",
	    &stats->dot3StatsDeferredTransmissions, "Deferred Transmissions");
	FUNC0(ctx, child, "ExcessiveCollisions",
	    &stats->dot3StatsExcessiveCollisions, "Excessive Collisions");
	FUNC0(ctx, child, "LateCollisions",
	    &stats->dot3StatsLateCollisions, "Late Collisions");
	FUNC0(ctx, child, "UnicastPkts",
	    &stats->ifHCOutUcastPkts, "Outbound Unicast Packets");
	FUNC0(ctx, child, "MulticastPkts",
	    &stats->ifHCOutMulticastPkts, "Outbound Multicast Packets");
	FUNC0(ctx, child, "BroadcastPkts",
	    &stats->ifHCOutBroadcastPkts, "Outbound Broadcast Packets");
}