
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ath_softc {int dummy; } ;
struct ath_rc_series {int tries; int rix; scalar_t__ flags; } ;
struct ath_node {int dummy; } ;
struct amrr_node {int amn_tx_try3; int amn_tx_try2; int amn_tx_try1; int amn_tx_try0; int amn_tx_rate3; int amn_tx_rate2; int amn_tx_rate1; int amn_tx_rate0; } ;


 struct amrr_node* ATH_NODE_AMRR (struct ath_node*) ;

void
ath_rate_getxtxrates(struct ath_softc *sc, struct ath_node *an,
    uint8_t rix0, struct ath_rc_series *rc)
{
 struct amrr_node *amn = ATH_NODE_AMRR(an);

 rc[0].flags = rc[1].flags = rc[2].flags = rc[3].flags = 0;

 rc[0].rix = amn->amn_tx_rate0;
 rc[1].rix = amn->amn_tx_rate1;
 rc[2].rix = amn->amn_tx_rate2;
 rc[3].rix = amn->amn_tx_rate3;

 rc[0].tries = amn->amn_tx_try0;
 rc[1].tries = amn->amn_tx_try1;
 rc[2].tries = amn->amn_tx_try2;
 rc[3].tries = amn->amn_tx_try3;
}
