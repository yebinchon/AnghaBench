
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ntb_transport_qp {int dummy; } ;
struct ntb_net_queue {int ifp; struct ntb_net_ctx* sc; } ;
struct ntb_net_ctx {int num_queues; int queues; } ;
struct TYPE_2__ {int csum_data; void* csum_flags; struct ntb_net_queue* flowid; int rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef int if_t ;


 int CTR1 (int ,char*,int) ;


 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int KTR_NTB ;
 int M_HASHTYPE_OPAQUE ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 void* NTB_CSUM_SET ;
 int if_getcapenable (int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_input (int ,struct mbuf*) ;
 int m_copydata (struct mbuf*,int,int,void*) ;
 int ntohs (int ) ;

__attribute__((used)) static void
ntb_net_rx_handler(struct ntb_transport_qp *qp, void *qp_data, void *data,
    int len)
{
 struct ntb_net_queue *q = qp_data;
 struct ntb_net_ctx *sc = q->sc;
 struct mbuf *m = data;
 if_t ifp = q->ifp;
 uint16_t proto;

 CTR1(KTR_NTB, "RX: rx handler (%d)", len);
 if (len < 0) {
  if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
  return;
 }

 m->m_pkthdr.rcvif = ifp;
 if (sc->num_queues > 1) {
  m->m_pkthdr.flowid = q - sc->queues;
  M_HASHTYPE_SET(m, M_HASHTYPE_OPAQUE);
 }
 if (if_getcapenable(ifp) & (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6)) {
  m_copydata(m, 12, 2, (void *)&proto);
  switch (ntohs(proto)) {
  case 129:
   if (if_getcapenable(ifp) & IFCAP_RXCSUM) {
    m->m_pkthdr.csum_data = 0xffff;
    m->m_pkthdr.csum_flags = NTB_CSUM_SET;
   }
   break;
  case 128:
   if (if_getcapenable(ifp) & IFCAP_RXCSUM_IPV6) {
    m->m_pkthdr.csum_data = 0xffff;
    m->m_pkthdr.csum_flags = NTB_CSUM_SET;
   }
   break;
  }
 }
 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
 if_input(ifp, m);
}
