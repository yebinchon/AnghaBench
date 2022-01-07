
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int csum_flags; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct TYPE_3__ {int bad_csum; } ;
struct ena_ring {TYPE_1__ rx_stats; } ;
struct ena_com_rx_ctx {scalar_t__ l3_proto; scalar_t__ l4_proto; scalar_t__ l4_csum_err; scalar_t__ l3_csum_err; } ;


 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int ENA_DBG ;
 scalar_t__ ENA_ETH_IO_L3_PROTO_IPV4 ;
 scalar_t__ ENA_ETH_IO_L4_PROTO_TCP ;
 scalar_t__ ENA_ETH_IO_L4_PROTO_UDP ;
 int counter_u64_add (int ,int) ;
 int ena_trace (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
ena_rx_checksum(struct ena_ring *rx_ring, struct ena_com_rx_ctx *ena_rx_ctx,
    struct mbuf *mbuf)
{


 if (unlikely((ena_rx_ctx->l3_proto == ENA_ETH_IO_L3_PROTO_IPV4) &&
     ena_rx_ctx->l3_csum_err)) {

  mbuf->m_pkthdr.csum_flags = 0;
  counter_u64_add(rx_ring->rx_stats.bad_csum, 1);
  ena_trace(ENA_DBG, "RX IPv4 header checksum error\n");
  return;
 }


 if ((ena_rx_ctx->l4_proto == ENA_ETH_IO_L4_PROTO_TCP) ||
     (ena_rx_ctx->l4_proto == ENA_ETH_IO_L4_PROTO_UDP)) {
  if (ena_rx_ctx->l4_csum_err) {

   mbuf->m_pkthdr.csum_flags = 0;
   counter_u64_add(rx_ring->rx_stats.bad_csum, 1);
   ena_trace(ENA_DBG, "RX L4 checksum error\n");
  } else {
   mbuf->m_pkthdr.csum_flags = CSUM_IP_CHECKED;
   mbuf->m_pkthdr.csum_flags |= CSUM_IP_VALID;
  }
 }
}
