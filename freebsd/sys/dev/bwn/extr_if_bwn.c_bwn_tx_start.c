
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {int dummy; } ;
struct bwn_softc {struct bwn_mac* sc_curmac; } ;
struct bwn_mac {int mac_flags; } ;


 int BWN_ASSERT_LOCKED (struct bwn_softc*) ;
 int BWN_MAC_FLAG_DMA ;
 int ENXIO ;
 scalar_t__ IEEE80211_MIN_LEN ;
 int bwn_dma_tx_start (struct bwn_mac*,struct ieee80211_node*,struct mbuf**) ;
 int bwn_pio_tx_start (struct bwn_mac*,struct ieee80211_node*,struct mbuf**) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
bwn_tx_start(struct bwn_softc *sc, struct ieee80211_node *ni, struct mbuf *m)
{
 struct bwn_mac *mac = sc->sc_curmac;
 int error;

 BWN_ASSERT_LOCKED(sc);

 if (m->m_pkthdr.len < IEEE80211_MIN_LEN || mac == ((void*)0)) {
  m_freem(m);
  return (ENXIO);
 }

 error = (mac->mac_flags & BWN_MAC_FLAG_DMA) ?
     bwn_dma_tx_start(mac, ni, &m) : bwn_pio_tx_start(mac, ni, &m);
 if (error) {
  m_freem(m);
  return (error);
 }
 return (0);
}
