
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rx_mode_ramrod_params {int pstate; int state; } ;
struct bxe_softc {int dummy; } ;


 int ecore_state_wait (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static int ecore_wait_rx_mode_comp_e2(struct bxe_softc *sc,
          struct ecore_rx_mode_ramrod_params *p)
{
 return ecore_state_wait(sc, p->state, p->pstate);
}
