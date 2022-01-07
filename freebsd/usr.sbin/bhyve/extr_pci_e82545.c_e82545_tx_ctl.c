
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_tx_enabled; int esc_TCTL; int * esc_txdesc; scalar_t__ esc_tdba; } ;


 int E1000_TCTL_EN ;
 int e82545_tx_disable (struct e82545_softc*) ;
 int e82545_tx_enable (struct e82545_softc*) ;
 int e82545_tx_update_tdba (struct e82545_softc*) ;

__attribute__((used)) static void
e82545_tx_ctl(struct e82545_softc *sc, uint32_t val)
{
 int on;

 on = ((val & E1000_TCTL_EN) == E1000_TCTL_EN);


 if (on == sc->esc_tx_enabled)
  return;

 if (on) {
  e82545_tx_update_tdba(sc);
  e82545_tx_enable(sc);
 } else {
  e82545_tx_disable(sc);
  sc->esc_tdba = 0;
  sc->esc_txdesc = ((void*)0);
 }


 sc->esc_TCTL = val & ~0xFE800005;
}
