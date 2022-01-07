
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bge_mac_stats {int ifHCOutBroadcastPkts; int ifHCOutMulticastPkts; int ifHCOutUcastPkts; int dot3StatsLateCollisions; int dot3StatsExcessiveCollisions; int dot3StatsDeferredTransmissions; int dot3StatsMultipleCollisionFrames; int dot3StatsSingleCollisionFrames; int dot3StatsInternalMacTransmitErrors; int outXoffSent; int outXonSent; int etherStatsCollisions; int ifHCOutOctets; int etherStatsUndersizePkts; int etherStatsJabbers; int dot3StatsFramesTooLong; int xoffStateEntered; int macControlFramesReceived; int xoffPauseFramesReceived; int xonPauseFramesReceived; int dot3StatsAlignmentErrors; int dot3StatsFCSErrors; int ifHCInBroadcastPkts; int ifHCInMulticastPkts; int ifHCInUcastPkts; int etherStatsFragments; int ifHCInOctets; int RecvThresholdHit; int InputErrors; int InputDiscards; int NoMoreRxBDs; int DmaWriteHighPriQueueFull; int DmaWriteQueueFull; int FramesDroppedDueToFilters; } ;
struct bge_softc {struct bge_mac_stats bge_mac_stats; } ;


 int BGE_SYSCTL_STAT_ADD64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;

__attribute__((used)) static void
bge_add_sysctl_stats_regs(struct bge_softc *sc, struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *parent)
{
 struct sysctl_oid *tree;
 struct sysctl_oid_list *child, *schild;
 struct bge_mac_stats *stats;

 stats = &sc->bge_mac_stats;
 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "BGE Statistics");
 schild = child = SYSCTL_CHILDREN(tree);
 BGE_SYSCTL_STAT_ADD64(ctx, child, "FramesDroppedDueToFilters",
     &stats->FramesDroppedDueToFilters, "Frames Dropped Due to Filters");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "DmaWriteQueueFull",
     &stats->DmaWriteQueueFull, "NIC DMA Write Queue Full");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "DmaWriteHighPriQueueFull",
     &stats->DmaWriteHighPriQueueFull,
     "NIC DMA Write High Priority Queue Full");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "NoMoreRxBDs",
     &stats->NoMoreRxBDs, "NIC No More RX Buffer Descriptors");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "InputDiscards",
     &stats->InputDiscards, "Discarded Input Frames");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "InputErrors",
     &stats->InputErrors, "Input Errors");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "RecvThresholdHit",
     &stats->RecvThresholdHit, "NIC Recv Threshold Hit");

 tree = SYSCTL_ADD_NODE(ctx, schild, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "BGE RX Statistics");
 child = SYSCTL_CHILDREN(tree);
 BGE_SYSCTL_STAT_ADD64(ctx, child, "ifHCInOctets",
     &stats->ifHCInOctets, "Inbound Octets");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "Fragments",
     &stats->etherStatsFragments, "Fragments");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "UnicastPkts",
     &stats->ifHCInUcastPkts, "Inbound Unicast Packets");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "MulticastPkts",
     &stats->ifHCInMulticastPkts, "Inbound Multicast Packets");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "BroadcastPkts",
     &stats->ifHCInBroadcastPkts, "Inbound Broadcast Packets");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "FCSErrors",
     &stats->dot3StatsFCSErrors, "FCS Errors");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "AlignmentErrors",
     &stats->dot3StatsAlignmentErrors, "Alignment Errors");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "xonPauseFramesReceived",
     &stats->xonPauseFramesReceived, "XON Pause Frames Received");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "xoffPauseFramesReceived",
     &stats->xoffPauseFramesReceived, "XOFF Pause Frames Received");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "ControlFramesReceived",
     &stats->macControlFramesReceived, "MAC Control Frames Received");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "xoffStateEntered",
     &stats->xoffStateEntered, "XOFF State Entered");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "FramesTooLong",
     &stats->dot3StatsFramesTooLong, "Frames Too Long");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "Jabbers",
     &stats->etherStatsJabbers, "Jabbers");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "UndersizePkts",
     &stats->etherStatsUndersizePkts, "Undersized Packets");

 tree = SYSCTL_ADD_NODE(ctx, schild, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "BGE TX Statistics");
 child = SYSCTL_CHILDREN(tree);
 BGE_SYSCTL_STAT_ADD64(ctx, child, "ifHCOutOctets",
     &stats->ifHCOutOctets, "Outbound Octets");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "Collisions",
     &stats->etherStatsCollisions, "TX Collisions");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "XonSent",
     &stats->outXonSent, "XON Sent");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "XoffSent",
     &stats->outXoffSent, "XOFF Sent");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "InternalMacTransmitErrors",
     &stats->dot3StatsInternalMacTransmitErrors,
     "Internal MAC TX Errors");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "SingleCollisionFrames",
     &stats->dot3StatsSingleCollisionFrames, "Single Collision Frames");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "MultipleCollisionFrames",
     &stats->dot3StatsMultipleCollisionFrames,
     "Multiple Collision Frames");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "DeferredTransmissions",
     &stats->dot3StatsDeferredTransmissions, "Deferred Transmissions");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "ExcessiveCollisions",
     &stats->dot3StatsExcessiveCollisions, "Excessive Collisions");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "LateCollisions",
     &stats->dot3StatsLateCollisions, "Late Collisions");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "UnicastPkts",
     &stats->ifHCOutUcastPkts, "Outbound Unicast Packets");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "MulticastPkts",
     &stats->ifHCOutMulticastPkts, "Outbound Multicast Packets");
 BGE_SYSCTL_STAT_ADD64(ctx, child, "BroadcastPkts",
     &stats->ifHCOutBroadcastPkts, "Outbound Broadcast Packets");
}
