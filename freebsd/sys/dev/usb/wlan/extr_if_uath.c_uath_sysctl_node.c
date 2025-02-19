
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_stat {int st_tx_pending; int st_tx_inactive; int st_tx_active; int st_rx_inactive; int st_rx_active; int st_cmd_waiting; int st_cmd_pending; int st_cmd_inactive; int st_cmd_active; int st_err; int st_keyerr; int st_decomperr; int st_decrypt_micerr; int st_decrypt_crcerr; int st_phyerr; int st_crcerr; int st_stopinprogress; int st_toobigrxpkt; int st_multichunk; int st_invalidlen; int st_badchunkseqnum; } ;
struct uath_softc {int sc_dev; struct uath_stat sc_stat; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int UATH_SYSCTL_STAT_ADD32 (struct sysctl_ctx_list*,struct sysctl_oid_list*,char*,int *,char*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
uath_sysctl_node(struct uath_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *child;
 struct sysctl_oid *tree;
 struct uath_stat *stats;

 stats = &sc->sc_stat;
 ctx = device_get_sysctl_ctx(sc->sc_dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->sc_dev));

 tree = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "UATH statistics");
 child = SYSCTL_CHILDREN(tree);
 UATH_SYSCTL_STAT_ADD32(ctx, child, "badchunkseqnum",
     &stats->st_badchunkseqnum, "Bad chunk sequence numbers");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "invalidlen", &stats->st_invalidlen,
     "Invalid length");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "multichunk", &stats->st_multichunk,
     "Multi chunks");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "toobigrxpkt",
     &stats->st_toobigrxpkt, "Too big rx packets");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "stopinprogress",
     &stats->st_stopinprogress, "Stop in progress");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "crcerrs", &stats->st_crcerr,
     "CRC errors");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "phyerr", &stats->st_phyerr,
     "PHY errors");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "decrypt_crcerr",
     &stats->st_decrypt_crcerr, "Decryption CRC errors");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "decrypt_micerr",
     &stats->st_decrypt_micerr, "Decryption Misc errors");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "decomperr", &stats->st_decomperr,
     "Decomp errors");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "keyerr", &stats->st_keyerr,
     "Key errors");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "err", &stats->st_err,
     "Unknown errors");

 UATH_SYSCTL_STAT_ADD32(ctx, child, "cmd_active",
     &stats->st_cmd_active, "Active numbers in Command queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "cmd_inactive",
     &stats->st_cmd_inactive, "Inactive numbers in Command queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "cmd_pending",
     &stats->st_cmd_pending, "Pending numbers in Command queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "cmd_waiting",
     &stats->st_cmd_waiting, "Waiting numbers in Command queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "rx_active",
     &stats->st_rx_active, "Active numbers in RX queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "rx_inactive",
     &stats->st_rx_inactive, "Inactive numbers in RX queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "tx_active",
     &stats->st_tx_active, "Active numbers in TX queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "tx_inactive",
     &stats->st_tx_inactive, "Inactive numbers in TX queue");
 UATH_SYSCTL_STAT_ADD32(ctx, child, "tx_pending",
     &stats->st_tx_pending, "Pending numbers in TX queue");
}
