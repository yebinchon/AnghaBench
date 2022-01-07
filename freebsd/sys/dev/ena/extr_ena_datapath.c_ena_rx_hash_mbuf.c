
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ena_ring {int qid; struct ena_adapter* adapter; } ;
struct ena_com_rx_ctx {int l3_proto; int l4_proto; scalar_t__ frag; int hash; } ;
struct ena_adapter {int dummy; } ;







 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_RSS_ACTIVE ;
 int M_HASHTYPE_NONE ;
 int M_HASHTYPE_OPAQUE_HASH ;
 int M_HASHTYPE_RSS_IPV4 ;
 int M_HASHTYPE_RSS_IPV6 ;
 int M_HASHTYPE_RSS_TCP_IPV4 ;
 int M_HASHTYPE_RSS_TCP_IPV6 ;
 int M_HASHTYPE_RSS_UDP_IPV4 ;
 int M_HASHTYPE_RSS_UDP_IPV6 ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void
ena_rx_hash_mbuf(struct ena_ring *rx_ring, struct ena_com_rx_ctx *ena_rx_ctx,
    struct mbuf *mbuf)
{
 struct ena_adapter *adapter = rx_ring->adapter;

 if (likely(ENA_FLAG_ISSET(ENA_FLAG_RSS_ACTIVE, adapter))) {
  mbuf->m_pkthdr.flowid = ena_rx_ctx->hash;

  if (ena_rx_ctx->frag &&
      (ena_rx_ctx->l3_proto != 130)) {
   M_HASHTYPE_SET(mbuf, M_HASHTYPE_OPAQUE_HASH);
   return;
  }

  switch (ena_rx_ctx->l3_proto) {
  case 132:
   switch (ena_rx_ctx->l4_proto) {
   case 129:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_TCP_IPV4);
    break;
   case 128:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_UDP_IPV4);
    break;
   default:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_IPV4);
   }
   break;
  case 131:
   switch (ena_rx_ctx->l4_proto) {
   case 129:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_TCP_IPV6);
    break;
   case 128:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_UDP_IPV6);
    break;
   default:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_IPV6);
   }
   break;
  case 130:
   M_HASHTYPE_SET(mbuf, M_HASHTYPE_NONE);
   break;
  default:
   M_HASHTYPE_SET(mbuf, M_HASHTYPE_OPAQUE_HASH);
  }
 } else {
  mbuf->m_pkthdr.flowid = rx_ring->qid;
  M_HASHTYPE_SET(mbuf, M_HASHTYPE_NONE);
 }
}
