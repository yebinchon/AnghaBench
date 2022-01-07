
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct onoe_node {int on_tx_rate3sp; int on_tx_rate2sp; int on_tx_rate1sp; } ;
struct ath_softc {int sc_ah; } ;
struct ath_node {int dummy; } ;
struct ath_desc {int dummy; } ;


 struct onoe_node* ATH_NODE_ONOE (struct ath_node*) ;
 int ath_hal_setupxtxdesc (int ,struct ath_desc*,int ,int,int ,int,int ,int) ;

void
ath_rate_setupxtxdesc(struct ath_softc *sc, struct ath_node *an,
 struct ath_desc *ds, int shortPreamble, u_int8_t rix)
{
 struct onoe_node *on = ATH_NODE_ONOE(an);

 ath_hal_setupxtxdesc(sc->sc_ah, ds
  , on->on_tx_rate1sp, 2
  , on->on_tx_rate2sp, 2
  , on->on_tx_rate3sp, 2
 );
}
