
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsec_softc {int dummy; } ;
struct tsec_rx_fcb {int flags; int protocol; int vlan; } ;
struct TYPE_2__ {int csum_data; int csum_flags; int ether_vtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
typedef int caddr_t ;


 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int M_VLANTAG ;
 int TSEC_RECEIVE_LOCK_ASSERT (struct tsec_softc*) ;
 scalar_t__ TSEC_RX_FCB_IP_CSUM_CHECKED (int) ;
 int TSEC_RX_FCB_IP_CSUM_ERROR ;
 scalar_t__ TSEC_RX_FCB_TCP_UDP_CSUM_CHECKED (int) ;
 int TSEC_RX_FCB_TCP_UDP_CSUM_ERROR ;
 int TSEC_RX_FCB_VLAN ;
 int m_adj (struct mbuf*,int) ;
 int m_copydata (struct mbuf*,int ,int,int ) ;

__attribute__((used)) static void
tsec_offload_process_frame(struct tsec_softc *sc, struct mbuf *m)
{
 struct tsec_rx_fcb rx_fcb;
 int csum_flags = 0;
 int protocol, flags;

 TSEC_RECEIVE_LOCK_ASSERT(sc);

 m_copydata(m, 0, sizeof(struct tsec_rx_fcb), (caddr_t)(&rx_fcb));
 flags = rx_fcb.flags;
 protocol = rx_fcb.protocol;

 if (TSEC_RX_FCB_IP_CSUM_CHECKED(flags)) {
  csum_flags |= CSUM_IP_CHECKED;

  if ((flags & TSEC_RX_FCB_IP_CSUM_ERROR) == 0)
   csum_flags |= CSUM_IP_VALID;
 }

 if ((protocol == IPPROTO_TCP || protocol == IPPROTO_UDP) &&
     TSEC_RX_FCB_TCP_UDP_CSUM_CHECKED(flags) &&
     (flags & TSEC_RX_FCB_TCP_UDP_CSUM_ERROR) == 0) {

  csum_flags |= CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
  m->m_pkthdr.csum_data = 0xFFFF;
 }

 m->m_pkthdr.csum_flags = csum_flags;

 if (flags & TSEC_RX_FCB_VLAN) {
  m->m_pkthdr.ether_vtag = rx_fcb.vlan;
  m->m_flags |= M_VLANTAG;
 }

 m_adj(m, sizeof(struct tsec_rx_fcb));
}
