
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rx_mode_obj {int config_rx_mode; int wait_comp; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int ecore_empty_rx_mode_wait ;
 int ecore_set_rx_mode_e1x ;
 int ecore_set_rx_mode_e2 ;
 int ecore_wait_rx_mode_comp_e2 ;

void ecore_init_rx_mode_obj(struct bxe_softc *sc,
       struct ecore_rx_mode_obj *o)
{
 if (CHIP_IS_E1x(sc)) {
  o->wait_comp = ecore_empty_rx_mode_wait;
  o->config_rx_mode = ecore_set_rx_mode_e1x;
 } else {
  o->wait_comp = ecore_wait_rx_mode_comp_e2;
  o->config_rx_mode = ecore_set_rx_mode_e2;
 }
}
