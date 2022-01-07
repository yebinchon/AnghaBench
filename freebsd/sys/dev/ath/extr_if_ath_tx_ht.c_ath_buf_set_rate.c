
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_node {int dummy; } ;
struct ath_softc {int sc_debug; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ bfs_atype; int bfs_ctsrate; int bfs_txflags; } ;
struct ath_buf {TYPE_1__ bf_state; struct ath_desc* bf_desc; } ;
typedef int series ;
typedef int HAL_11N_RATE_SERIES ;


 int ATH_DEBUG_XMIT ;
 scalar_t__ HAL_PKT_TYPE_PSPOLL ;
 int ath_hal_set11nratescenario (struct ath_hal*,struct ath_desc*,int,int,int *,int,int) ;
 int ath_rateseries_print (struct ath_softc*,int *) ;
 int ath_rateseries_setup (struct ath_softc*,struct ieee80211_node*,struct ath_buf*,int *) ;
 int memset (int **,int ,int) ;

void
ath_buf_set_rate(struct ath_softc *sc, struct ieee80211_node *ni,
    struct ath_buf *bf)
{
 HAL_11N_RATE_SERIES series[4];
 struct ath_desc *ds = bf->bf_desc;
 struct ath_hal *ah = sc->sc_ah;
 int is_pspoll = (bf->bf_state.bfs_atype == HAL_PKT_TYPE_PSPOLL);
 int ctsrate = bf->bf_state.bfs_ctsrate;
 int flags = bf->bf_state.bfs_txflags;


 memset(&series, 0, sizeof(series));

 ath_rateseries_setup(sc, ni, bf, series);
 ath_hal_set11nratescenario(ah, ds,
     !is_pspoll,
     ctsrate,
     series,
     4,
     flags);
}
