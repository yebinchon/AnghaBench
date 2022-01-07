
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct onoe_node {int on_tx_try0; int on_tx_rate0; int on_tx_rate0sp; int on_tx_rix0; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int dummy; } ;


 struct onoe_node* ATH_NODE_ONOE (struct ath_node*) ;

void
ath_rate_findrate(struct ath_softc *sc, struct ath_node *an,
 int shortPreamble, size_t frameLen,
 u_int8_t *rix, int *try0, u_int8_t *txrate)
{
 struct onoe_node *on = ATH_NODE_ONOE(an);

 *rix = on->on_tx_rix0;
 *try0 = on->on_tx_try0;
 if (shortPreamble)
  *txrate = on->on_tx_rate0sp;
 else
  *txrate = on->on_tx_rate0;
}
