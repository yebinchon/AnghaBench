
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;


 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int rtwn_pci_tx_start_beacon (struct rtwn_softc*,struct mbuf*,int *,int) ;
 int rtwn_pci_tx_start_frame (struct rtwn_softc*,struct ieee80211_node*,struct mbuf*,int *,int ) ;

int
rtwn_pci_tx_start(struct rtwn_softc *sc, struct ieee80211_node *ni,
    struct mbuf *m, uint8_t *tx_desc, uint8_t type, int id)
{
 int error = 0;

 RTWN_ASSERT_LOCKED(sc);

 if (ni == ((void*)0))
  error = rtwn_pci_tx_start_beacon(sc, m, tx_desc, id);
 else
  error = rtwn_pci_tx_start_frame(sc, ni, m, tx_desc, type);

 return (error);
}
