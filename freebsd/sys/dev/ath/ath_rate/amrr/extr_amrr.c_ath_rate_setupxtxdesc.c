
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_softc {int sc_ah; } ;
struct ath_node {int dummy; } ;
struct ath_desc {int dummy; } ;
struct amrr_node {int amn_tx_try3; int amn_tx_rate3sp; int amn_tx_try2; int amn_tx_rate2sp; int amn_tx_try1; int amn_tx_rate1sp; } ;


 struct amrr_node* ATH_NODE_AMRR (struct ath_node*) ;
 int ath_hal_setupxtxdesc (int ,struct ath_desc*,int ,int ,int ,int ,int ,int ) ;

void
ath_rate_setupxtxdesc(struct ath_softc *sc, struct ath_node *an,
 struct ath_desc *ds, int shortPreamble, u_int8_t rix)
{
 struct amrr_node *amn = ATH_NODE_AMRR(an);

 ath_hal_setupxtxdesc(sc->sc_ah, ds
  , amn->amn_tx_rate1sp, amn->amn_tx_try1
  , amn->amn_tx_rate2sp, amn->amn_tx_try2
  , amn->amn_tx_rate3sp, amn->amn_tx_try3
 );
}
