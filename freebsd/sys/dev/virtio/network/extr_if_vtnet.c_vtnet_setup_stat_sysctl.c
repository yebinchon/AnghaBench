
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq_stats {int vtxs_rescheduled; int vtxs_tso; int vtxs_csum; } ;
struct vtnet_statistics {int tx_task_rescheduled; int tx_tso_offloaded; int tx_csum_offloaded; int tx_defrag_failed; int tx_defragged; int tx_tso_not_tcp; int tx_tso_bad_ethtype; int tx_csum_bad_ethtype; int rx_task_rescheduled; int rx_csum_offloaded; int rx_csum_failed; int rx_csum_bad_proto; int rx_csum_bad_offset; int rx_csum_bad_ipproto; int rx_csum_bad_ethtype; int rx_mergeable_failed; int rx_enq_replacement_failed; int rx_frame_too_large; int mbuf_alloc_failed; } ;
struct vtnet_softc {struct vtnet_statistics vtnet_stats; } ;
struct vtnet_rxq_stats {int vrxs_rescheduled; int vrxs_csum_failed; int vrxs_csum; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int vtnet_accum_stats (struct vtnet_softc*,struct vtnet_rxq_stats*,struct vtnet_txq_stats*) ;

__attribute__((used)) static void
vtnet_setup_stat_sysctl(struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *child, struct vtnet_softc *sc)
{
 struct vtnet_statistics *stats;
 struct vtnet_rxq_stats rxaccum;
 struct vtnet_txq_stats txaccum;

 vtnet_accum_stats(sc, &rxaccum, &txaccum);

 stats = &sc->vtnet_stats;
 stats->rx_csum_offloaded = rxaccum.vrxs_csum;
 stats->rx_csum_failed = rxaccum.vrxs_csum_failed;
 stats->rx_task_rescheduled = rxaccum.vrxs_rescheduled;
 stats->tx_csum_offloaded = txaccum.vtxs_csum;
 stats->tx_tso_offloaded = txaccum.vtxs_tso;
 stats->tx_task_rescheduled = txaccum.vtxs_rescheduled;

 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "mbuf_alloc_failed",
     CTLFLAG_RD, &stats->mbuf_alloc_failed,
     "Mbuf cluster allocation failures");

 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_frame_too_large",
     CTLFLAG_RD, &stats->rx_frame_too_large,
     "Received frame larger than the mbuf chain");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_enq_replacement_failed",
     CTLFLAG_RD, &stats->rx_enq_replacement_failed,
     "Enqueuing the replacement receive mbuf failed");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_mergeable_failed",
     CTLFLAG_RD, &stats->rx_mergeable_failed,
     "Mergeable buffers receive failures");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_csum_bad_ethtype",
     CTLFLAG_RD, &stats->rx_csum_bad_ethtype,
     "Received checksum offloaded buffer with unsupported "
     "Ethernet type");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_csum_bad_ipproto",
     CTLFLAG_RD, &stats->rx_csum_bad_ipproto,
     "Received checksum offloaded buffer with incorrect IP protocol");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_csum_bad_offset",
     CTLFLAG_RD, &stats->rx_csum_bad_offset,
     "Received checksum offloaded buffer with incorrect offset");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_csum_bad_proto",
     CTLFLAG_RD, &stats->rx_csum_bad_proto,
     "Received checksum offloaded buffer with incorrect protocol");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_csum_failed",
     CTLFLAG_RD, &stats->rx_csum_failed,
     "Received buffer checksum offload failed");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_csum_offloaded",
     CTLFLAG_RD, &stats->rx_csum_offloaded,
     "Received buffer checksum offload succeeded");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "rx_task_rescheduled",
     CTLFLAG_RD, &stats->rx_task_rescheduled,
     "Times the receive interrupt task rescheduled itself");

 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_csum_bad_ethtype",
     CTLFLAG_RD, &stats->tx_csum_bad_ethtype,
     "Aborted transmit of checksum offloaded buffer with unknown "
     "Ethernet type");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_tso_bad_ethtype",
     CTLFLAG_RD, &stats->tx_tso_bad_ethtype,
     "Aborted transmit of TSO buffer with unknown Ethernet type");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_tso_not_tcp",
     CTLFLAG_RD, &stats->tx_tso_not_tcp,
     "Aborted transmit of TSO buffer with non TCP protocol");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_defragged",
     CTLFLAG_RD, &stats->tx_defragged,
     "Transmit mbufs defragged");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_defrag_failed",
     CTLFLAG_RD, &stats->tx_defrag_failed,
     "Aborted transmit of buffer because defrag failed");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_csum_offloaded",
     CTLFLAG_RD, &stats->tx_csum_offloaded,
     "Offloaded checksum of transmitted buffer");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_tso_offloaded",
     CTLFLAG_RD, &stats->tx_tso_offloaded,
     "Segmentation offload of transmitted buffer");
 SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, "tx_task_rescheduled",
     CTLFLAG_RD, &stats->tx_task_rescheduled,
     "Times the transmit interrupt task rescheduled itself");
}
