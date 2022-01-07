
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vtxs_tso; } ;
struct vtnet_txq {TYPE_2__ vtntx_stats; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {int vtnet_flags; int vtnet_ifp; } ;
struct virtio_net_hdr {int hdr_len; int gso_type; int gso_size; } ;
struct timeval {int dummy; } ;
struct tcphdr {int th_off; int th_flags; } ;
struct TYPE_3__ {int tso_segsz; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; scalar_t__ m_data; } ;
typedef int caddr_t ;


 int ENOTSUP ;
 int ETHERTYPE_IP ;
 int TH_CWR ;
 int VIRTIO_NET_HDR_GSO_ECN ;
 int VIRTIO_NET_HDR_GSO_TCPV4 ;
 int VIRTIO_NET_HDR_GSO_TCPV6 ;
 int VTNET_FLAG_TSO_ECN ;
 scalar_t__ __predict_false (int) ;
 int if_printf (int ,char*) ;
 int m_copydata (struct mbuf*,int,int,int ) ;
 scalar_t__ ppsratecheck (struct timeval*,int*,int) ;

__attribute__((used)) static int
vtnet_txq_offload_tso(struct vtnet_txq *txq, struct mbuf *m, int eth_type,
    int offset, struct virtio_net_hdr *hdr)
{
 static struct timeval lastecn;
 static int curecn;
 struct vtnet_softc *sc;
 struct tcphdr *tcp, tcphdr;

 sc = txq->vtntx_sc;

 if (__predict_false(m->m_len < offset + sizeof(struct tcphdr))) {
  m_copydata(m, offset, sizeof(struct tcphdr), (caddr_t) &tcphdr);
  tcp = &tcphdr;
 } else
  tcp = (struct tcphdr *)(m->m_data + offset);

 hdr->hdr_len = offset + (tcp->th_off << 2);
 hdr->gso_size = m->m_pkthdr.tso_segsz;
 hdr->gso_type = eth_type == ETHERTYPE_IP ? VIRTIO_NET_HDR_GSO_TCPV4 :
     VIRTIO_NET_HDR_GSO_TCPV6;

 if (tcp->th_flags & TH_CWR) {





  if ((sc->vtnet_flags & VTNET_FLAG_TSO_ECN) == 0) {
   if (ppsratecheck(&lastecn, &curecn, 1))
    if_printf(sc->vtnet_ifp,
        "TSO with ECN not negotiated with host\n");
   return (ENOTSUP);
  }
  hdr->gso_type |= VIRTIO_NET_HDR_GSO_ECN;
 }

 txq->vtntx_stats.vtxs_tso++;

 return (0);
}
