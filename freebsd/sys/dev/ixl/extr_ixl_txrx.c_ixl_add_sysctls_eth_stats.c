
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ixl_sysctl_info {char* member_1; char* member_2; scalar_t__ stat; int description; int name; int * member_0; } ;
struct i40e_eth_stats {int tx_broadcast; int tx_multicast; int tx_unicast; int tx_bytes; int rx_discards; int rx_broadcast; int rx_multicast; int rx_unicast; int rx_bytes; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,int ,int ,scalar_t__,int ) ;

void
ixl_add_sysctls_eth_stats(struct sysctl_ctx_list *ctx,
 struct sysctl_oid_list *child,
 struct i40e_eth_stats *eth_stats)
{
 struct ixl_sysctl_info ctls[] =
 {
  {&eth_stats->rx_bytes, "good_octets_rcvd", "Good Octets Received"},
  {&eth_stats->rx_unicast, "ucast_pkts_rcvd",
   "Unicast Packets Received"},
  {&eth_stats->rx_multicast, "mcast_pkts_rcvd",
   "Multicast Packets Received"},
  {&eth_stats->rx_broadcast, "bcast_pkts_rcvd",
   "Broadcast Packets Received"},
  {&eth_stats->rx_discards, "rx_discards", "Discarded RX packets"},
  {&eth_stats->tx_bytes, "good_octets_txd", "Good Octets Transmitted"},
  {&eth_stats->tx_unicast, "ucast_pkts_txd", "Unicast Packets Transmitted"},
  {&eth_stats->tx_multicast, "mcast_pkts_txd",
   "Multicast Packets Transmitted"},
  {&eth_stats->tx_broadcast, "bcast_pkts_txd",
   "Broadcast Packets Transmitted"},

  {0,0,0}
 };

 struct ixl_sysctl_info *entry = ctls;
 while (entry->stat != 0)
 {
  SYSCTL_ADD_UQUAD(ctx, child, OID_AUTO, entry->name,
    CTLFLAG_RD, entry->stat,
    entry->description);
  entry++;
 }
}
