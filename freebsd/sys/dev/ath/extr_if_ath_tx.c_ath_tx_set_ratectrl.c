
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_node {int dummy; } ;
struct ath_softc {int sc_ah; } ;
struct ath_rc_series {int tries; int ratecode; } ;
struct TYPE_2__ {int bfs_txflags; int bfs_ismrr; struct ath_rc_series* bfs_rc; } ;
struct ath_buf {int bf_desc; TYPE_1__ bf_state; } ;


 int HAL_TXDESC_NOACK ;
 int ath_buf_set_rate (struct ath_softc*,struct ieee80211_node*,struct ath_buf*) ;
 int ath_hal_setupxtxdesc (int ,int ,int ,int,int ,int,int ,int) ;
 scalar_t__ ath_tx_is_11n (struct ath_softc*) ;

__attribute__((used)) static void
ath_tx_set_ratectrl(struct ath_softc *sc, struct ieee80211_node *ni,
    struct ath_buf *bf)
{
 struct ath_rc_series *rc = bf->bf_state.bfs_rc;


 if (! bf->bf_state.bfs_ismrr)
  rc[1].tries = rc[2].tries = rc[3].tries = 0;
 if (ath_tx_is_11n(sc)) {
  ath_buf_set_rate(sc, ni, bf);
 } else {
  ath_hal_setupxtxdesc(sc->sc_ah, bf->bf_desc
   , rc[1].ratecode, rc[1].tries
   , rc[2].ratecode, rc[2].tries
   , rc[3].ratecode, rc[3].tries
  );
 }
}
