
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ixl_sysctl_info {char* member_1; char* member_2; scalar_t__ stat; int description; int name; int * member_0; } ;
struct i40e_eth_stats {int dummy; } ;
struct i40e_hw_port_stats {int link_xoff_rx; int link_xoff_tx; int link_xon_rx; int link_xon_tx; int tx_size_big; int tx_size_1522; int tx_size_1023; int tx_size_511; int tx_size_255; int tx_size_127; int tx_size_64; int checksum_error; int rx_jabber; int rx_oversize; int rx_fragments; int rx_undersize; int rx_size_big; int rx_size_1522; int rx_size_1023; int rx_size_511; int rx_size_255; int rx_size_127; int rx_size_64; int rx_length_errors; int mac_remote_faults; int mac_local_faults; int illegal_bytes; int crc_errors; struct i40e_eth_stats eth; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,int ,int ,scalar_t__,int ) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int ixl_add_sysctls_eth_stats (struct sysctl_ctx_list*,struct sysctl_oid_list*,struct i40e_eth_stats*) ;

void
ixl_add_sysctls_mac_stats(struct sysctl_ctx_list *ctx,
 struct sysctl_oid_list *child,
 struct i40e_hw_port_stats *stats)
{
 struct sysctl_oid *stat_node = SYSCTL_ADD_NODE(ctx, child, OID_AUTO, "mac",
        CTLFLAG_RD, ((void*)0), "Mac Statistics");
 struct sysctl_oid_list *stat_list = SYSCTL_CHILDREN(stat_node);

 struct i40e_eth_stats *eth_stats = &stats->eth;
 ixl_add_sysctls_eth_stats(ctx, stat_list, eth_stats);

 struct ixl_sysctl_info ctls[] =
 {
  {&stats->crc_errors, "crc_errors", "CRC Errors"},
  {&stats->illegal_bytes, "illegal_bytes", "Illegal Byte Errors"},
  {&stats->mac_local_faults, "local_faults", "MAC Local Faults"},
  {&stats->mac_remote_faults, "remote_faults", "MAC Remote Faults"},
  {&stats->rx_length_errors, "rx_length_errors", "Receive Length Errors"},

  {&stats->rx_size_64, "rx_frames_64", "64 byte frames received"},
  {&stats->rx_size_127, "rx_frames_65_127", "65-127 byte frames received"},
  {&stats->rx_size_255, "rx_frames_128_255", "128-255 byte frames received"},
  {&stats->rx_size_511, "rx_frames_256_511", "256-511 byte frames received"},
  {&stats->rx_size_1023, "rx_frames_512_1023", "512-1023 byte frames received"},
  {&stats->rx_size_1522, "rx_frames_1024_1522", "1024-1522 byte frames received"},
  {&stats->rx_size_big, "rx_frames_big", "1523-9522 byte frames received"},
  {&stats->rx_undersize, "rx_undersize", "Undersized packets received"},
  {&stats->rx_fragments, "rx_fragmented", "Fragmented packets received"},
  {&stats->rx_oversize, "rx_oversized", "Oversized packets received"},
  {&stats->rx_jabber, "rx_jabber", "Received Jabber"},
  {&stats->checksum_error, "checksum_errors", "Checksum Errors"},

  {&stats->tx_size_64, "tx_frames_64", "64 byte frames transmitted"},
  {&stats->tx_size_127, "tx_frames_65_127", "65-127 byte frames transmitted"},
  {&stats->tx_size_255, "tx_frames_128_255", "128-255 byte frames transmitted"},
  {&stats->tx_size_511, "tx_frames_256_511", "256-511 byte frames transmitted"},
  {&stats->tx_size_1023, "tx_frames_512_1023", "512-1023 byte frames transmitted"},
  {&stats->tx_size_1522, "tx_frames_1024_1522", "1024-1522 byte frames transmitted"},
  {&stats->tx_size_big, "tx_frames_big", "1523-9522 byte frames transmitted"},

  {&stats->link_xon_tx, "xon_txd", "Link XON transmitted"},
  {&stats->link_xon_rx, "xon_recvd", "Link XON received"},
  {&stats->link_xoff_tx, "xoff_txd", "Link XOFF transmitted"},
  {&stats->link_xoff_rx, "xoff_recvd", "Link XOFF received"},

  {0,0,0}
 };

 struct ixl_sysctl_info *entry = ctls;
 while (entry->stat != 0)
 {
  SYSCTL_ADD_UQUAD(ctx, stat_list, OID_AUTO, entry->name,
    CTLFLAG_RD, entry->stat,
    entry->description);
  entry++;
 }
}
