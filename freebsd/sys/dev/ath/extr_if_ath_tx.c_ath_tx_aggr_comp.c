
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ bfs_aggr; } ;
struct ath_buf {TYPE_1__ bf_state; } ;


 int ath_tx_aggr_comp_aggr (struct ath_softc*,struct ath_buf*,int) ;
 int ath_tx_aggr_comp_unaggr (struct ath_softc*,struct ath_buf*,int) ;

void
ath_tx_aggr_comp(struct ath_softc *sc, struct ath_buf *bf, int fail)
{
 if (bf->bf_state.bfs_aggr)
  ath_tx_aggr_comp_aggr(sc, bf, fail);
 else
  ath_tx_aggr_comp_unaggr(sc, bf, fail);
}
