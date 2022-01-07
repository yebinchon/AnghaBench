
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bge_softc {int dummy; } ;
struct TYPE_4__ {int outRangeLengthError; int inRangeLengthError; int etherStatsUndersizePkts; int etherStatsJabbers; int dot3StatsFramesTooLong; int xoffStateEntered; int macControlFramesReceived; int xoffPauseFramesReceived; int xonPauseFramesReceived; int dot3StatsAlignmentErrors; int dot3StatsFCSErrors; int ifHCInMulticastPkts; int ifHCInUcastPkts; int etherStatsFragments; int ifHCInOctets; } ;
struct TYPE_3__ {int ifOutErrors; int ifOutDiscards; int dot3StatsCarrierSenseErrors; int ifHCOutBroadcastPkts; int ifHCOutMulticastPkts; int ifHCOutUcastPkts; int dot3StatsLateCollisions; int dot3StatsExcessiveCollisions; int dot3StatsDeferredTransmissions; int dot3StatsMultipleCollisionFrames; int dot3StatsSingleCollisionFrames; int dot3StatsInternalMacTransmitErrors; int flowControlDone; int outXoffSent; int outXonSent; int etherStatsCollisions; int ifHCOutOctets; } ;


 int BGE_SYSCTL_STAT (struct bge_softc*,struct sysctl_ctx_list*,char*,struct sysctl_oid_list*,int ,char*) ;
 int COSFramesDroppedDueToFilters ;
 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int ifInDiscards ;
 int ifInErrors ;
 int nicAvoidedInterrupts ;
 int nicDmaReadHighPriQueueFull ;
 int nicDmaReadQueueFull ;
 int nicDmaWriteHighPriQueueFull ;
 int nicDmaWriteQueueFull ;
 int nicInterrupts ;
 int nicNoMoreRxBDs ;
 int nicRecvThresholdHit ;
 int nicRingSetSendProdIndex ;
 int nicRingStatusUpdate ;
 int nicSendDataCompQueueFull ;
 int nicSendThresholdHit ;
 TYPE_2__ rxstats ;
 TYPE_1__ txstats ;

__attribute__((used)) static void
bge_add_sysctl_stats(struct bge_softc *sc, struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *parent)
{
 struct sysctl_oid *tree;
 struct sysctl_oid_list *children, *schildren;

 tree = SYSCTL_ADD_NODE(ctx, parent, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "BGE Statistics");
 schildren = children = SYSCTL_CHILDREN(tree);
 BGE_SYSCTL_STAT(sc, ctx, "Frames Dropped Due To Filters",
     children, COSFramesDroppedDueToFilters,
     "FramesDroppedDueToFilters");
 BGE_SYSCTL_STAT(sc, ctx, "NIC DMA Write Queue Full",
     children, nicDmaWriteQueueFull, "DmaWriteQueueFull");
 BGE_SYSCTL_STAT(sc, ctx, "NIC DMA Write High Priority Queue Full",
     children, nicDmaWriteHighPriQueueFull, "DmaWriteHighPriQueueFull");
 BGE_SYSCTL_STAT(sc, ctx, "NIC No More RX Buffer Descriptors",
     children, nicNoMoreRxBDs, "NoMoreRxBDs");
 BGE_SYSCTL_STAT(sc, ctx, "Discarded Input Frames",
     children, ifInDiscards, "InputDiscards");
 BGE_SYSCTL_STAT(sc, ctx, "Input Errors",
     children, ifInErrors, "InputErrors");
 BGE_SYSCTL_STAT(sc, ctx, "NIC Recv Threshold Hit",
     children, nicRecvThresholdHit, "RecvThresholdHit");
 BGE_SYSCTL_STAT(sc, ctx, "NIC DMA Read Queue Full",
     children, nicDmaReadQueueFull, "DmaReadQueueFull");
 BGE_SYSCTL_STAT(sc, ctx, "NIC DMA Read High Priority Queue Full",
     children, nicDmaReadHighPriQueueFull, "DmaReadHighPriQueueFull");
 BGE_SYSCTL_STAT(sc, ctx, "NIC Send Data Complete Queue Full",
     children, nicSendDataCompQueueFull, "SendDataCompQueueFull");
 BGE_SYSCTL_STAT(sc, ctx, "NIC Ring Set Send Producer Index",
     children, nicRingSetSendProdIndex, "RingSetSendProdIndex");
 BGE_SYSCTL_STAT(sc, ctx, "NIC Ring Status Update",
     children, nicRingStatusUpdate, "RingStatusUpdate");
 BGE_SYSCTL_STAT(sc, ctx, "NIC Interrupts",
     children, nicInterrupts, "Interrupts");
 BGE_SYSCTL_STAT(sc, ctx, "NIC Avoided Interrupts",
     children, nicAvoidedInterrupts, "AvoidedInterrupts");
 BGE_SYSCTL_STAT(sc, ctx, "NIC Send Threshold Hit",
     children, nicSendThresholdHit, "SendThresholdHit");

 tree = SYSCTL_ADD_NODE(ctx, schildren, OID_AUTO, "rx", CTLFLAG_RD,
     ((void*)0), "BGE RX Statistics");
 children = SYSCTL_CHILDREN(tree);
 BGE_SYSCTL_STAT(sc, ctx, "Inbound Octets",
     children, rxstats.ifHCInOctets, "ifHCInOctets");
 BGE_SYSCTL_STAT(sc, ctx, "Fragments",
     children, rxstats.etherStatsFragments, "Fragments");
 BGE_SYSCTL_STAT(sc, ctx, "Inbound Unicast Packets",
     children, rxstats.ifHCInUcastPkts, "UnicastPkts");
 BGE_SYSCTL_STAT(sc, ctx, "Inbound Multicast Packets",
     children, rxstats.ifHCInMulticastPkts, "MulticastPkts");
 BGE_SYSCTL_STAT(sc, ctx, "FCS Errors",
     children, rxstats.dot3StatsFCSErrors, "FCSErrors");
 BGE_SYSCTL_STAT(sc, ctx, "Alignment Errors",
     children, rxstats.dot3StatsAlignmentErrors, "AlignmentErrors");
 BGE_SYSCTL_STAT(sc, ctx, "XON Pause Frames Received",
     children, rxstats.xonPauseFramesReceived, "xonPauseFramesReceived");
 BGE_SYSCTL_STAT(sc, ctx, "XOFF Pause Frames Received",
     children, rxstats.xoffPauseFramesReceived,
     "xoffPauseFramesReceived");
 BGE_SYSCTL_STAT(sc, ctx, "MAC Control Frames Received",
     children, rxstats.macControlFramesReceived,
     "ControlFramesReceived");
 BGE_SYSCTL_STAT(sc, ctx, "XOFF State Entered",
     children, rxstats.xoffStateEntered, "xoffStateEntered");
 BGE_SYSCTL_STAT(sc, ctx, "Frames Too Long",
     children, rxstats.dot3StatsFramesTooLong, "FramesTooLong");
 BGE_SYSCTL_STAT(sc, ctx, "Jabbers",
     children, rxstats.etherStatsJabbers, "Jabbers");
 BGE_SYSCTL_STAT(sc, ctx, "Undersized Packets",
     children, rxstats.etherStatsUndersizePkts, "UndersizePkts");
 BGE_SYSCTL_STAT(sc, ctx, "Inbound Range Length Errors",
     children, rxstats.inRangeLengthError, "inRangeLengthError");
 BGE_SYSCTL_STAT(sc, ctx, "Outbound Range Length Errors",
     children, rxstats.outRangeLengthError, "outRangeLengthError");

 tree = SYSCTL_ADD_NODE(ctx, schildren, OID_AUTO, "tx", CTLFLAG_RD,
     ((void*)0), "BGE TX Statistics");
 children = SYSCTL_CHILDREN(tree);
 BGE_SYSCTL_STAT(sc, ctx, "Outbound Octets",
     children, txstats.ifHCOutOctets, "ifHCOutOctets");
 BGE_SYSCTL_STAT(sc, ctx, "TX Collisions",
     children, txstats.etherStatsCollisions, "Collisions");
 BGE_SYSCTL_STAT(sc, ctx, "XON Sent",
     children, txstats.outXonSent, "XonSent");
 BGE_SYSCTL_STAT(sc, ctx, "XOFF Sent",
     children, txstats.outXoffSent, "XoffSent");
 BGE_SYSCTL_STAT(sc, ctx, "Flow Control Done",
     children, txstats.flowControlDone, "flowControlDone");
 BGE_SYSCTL_STAT(sc, ctx, "Internal MAC TX errors",
     children, txstats.dot3StatsInternalMacTransmitErrors,
     "InternalMacTransmitErrors");
 BGE_SYSCTL_STAT(sc, ctx, "Single Collision Frames",
     children, txstats.dot3StatsSingleCollisionFrames,
     "SingleCollisionFrames");
 BGE_SYSCTL_STAT(sc, ctx, "Multiple Collision Frames",
     children, txstats.dot3StatsMultipleCollisionFrames,
     "MultipleCollisionFrames");
 BGE_SYSCTL_STAT(sc, ctx, "Deferred Transmissions",
     children, txstats.dot3StatsDeferredTransmissions,
     "DeferredTransmissions");
 BGE_SYSCTL_STAT(sc, ctx, "Excessive Collisions",
     children, txstats.dot3StatsExcessiveCollisions,
     "ExcessiveCollisions");
 BGE_SYSCTL_STAT(sc, ctx, "Late Collisions",
     children, txstats.dot3StatsLateCollisions,
     "LateCollisions");
 BGE_SYSCTL_STAT(sc, ctx, "Outbound Unicast Packets",
     children, txstats.ifHCOutUcastPkts, "UnicastPkts");
 BGE_SYSCTL_STAT(sc, ctx, "Outbound Multicast Packets",
     children, txstats.ifHCOutMulticastPkts, "MulticastPkts");
 BGE_SYSCTL_STAT(sc, ctx, "Outbound Broadcast Packets",
     children, txstats.ifHCOutBroadcastPkts, "BroadcastPkts");
 BGE_SYSCTL_STAT(sc, ctx, "Carrier Sense Errors",
     children, txstats.dot3StatsCarrierSenseErrors,
     "CarrierSenseErrors");
 BGE_SYSCTL_STAT(sc, ctx, "Outbound Discards",
     children, txstats.ifOutDiscards, "Discards");
 BGE_SYSCTL_STAT(sc, ctx, "Outbound Errors",
     children, txstats.ifOutErrors, "Errors");
}
