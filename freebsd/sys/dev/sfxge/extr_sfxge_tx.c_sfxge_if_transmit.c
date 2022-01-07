
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sfxge_txq {int dummy; } ;
struct sfxge_softc {int if_flags; int txq_dynamic_cksum_toggle_supported; int txq_count; int* rx_indir_table; struct sfxge_txq** txq; } ;
struct TYPE_2__ {int csum_flags; int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_flags; scalar_t__ if_softc; } ;


 int B_FALSE ;
 int CSUM_DELAY_DATA ;
 int CSUM_DELAY_IP ;
 int CSUM_TCP_IPV6 ;
 int CSUM_TSO ;
 int CSUM_UDP_IPV6 ;
 int IFF_UP ;
 int KASSERT (int,char*) ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 size_t SFXGE_TXQ_IP_CKSUM ;
 int SFXGE_TXQ_IP_TCP_UDP_CKSUM ;
 size_t SFXGE_TXQ_NON_CKSUM ;
 int SFXGE_TXQ_NTYPES ;
 int m_freem (struct mbuf*) ;
 int nitems (int*) ;
 scalar_t__ rss_m2bucket (struct mbuf*,int*) ;
 int sfxge_parse_tx_packet (struct mbuf*) ;
 int sfxge_tx_packet_add (struct sfxge_txq*,struct mbuf*) ;

int
sfxge_if_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct sfxge_softc *sc;
 struct sfxge_txq *txq;
 int rc;

 sc = (struct sfxge_softc *)ifp->if_softc;
 KASSERT((ifp->if_flags & IFF_UP) || (sc->if_flags & IFF_UP),
  ("interface not up"));


 if (sc->txq_dynamic_cksum_toggle_supported |
     (m->m_pkthdr.csum_flags &
      (CSUM_DELAY_DATA | CSUM_TCP_IPV6 | CSUM_UDP_IPV6 | CSUM_TSO))) {
  int index = 0;
  if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE) {
   uint32_t hash = m->m_pkthdr.flowid;
   uint32_t idx = hash % nitems(sc->rx_indir_table);

   index = sc->rx_indir_table[idx];
  }





  index += (sc->txq_dynamic_cksum_toggle_supported == B_FALSE) ?
    SFXGE_TXQ_IP_TCP_UDP_CKSUM : 0;
  txq = sc->txq[index];
 } else if (m->m_pkthdr.csum_flags & CSUM_DELAY_IP) {
  txq = sc->txq[SFXGE_TXQ_IP_CKSUM];
 } else {
  txq = sc->txq[SFXGE_TXQ_NON_CKSUM];
 }

 rc = sfxge_tx_packet_add(txq, m);
 if (rc != 0)
  m_freem(m);

 return (rc);
}
