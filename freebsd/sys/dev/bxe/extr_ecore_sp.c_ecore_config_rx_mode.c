
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_rx_mode_ramrod_params {TYPE_1__* rx_mode_obj; int ramrod_flags; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {int (* config_rx_mode ) (struct bxe_softc*,struct ecore_rx_mode_ramrod_params*) ;int (* wait_comp ) (struct bxe_softc*,struct ecore_rx_mode_ramrod_params*) ;} ;


 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int RAMROD_COMP_WAIT ;
 int stub1 (struct bxe_softc*,struct ecore_rx_mode_ramrod_params*) ;
 int stub2 (struct bxe_softc*,struct ecore_rx_mode_ramrod_params*) ;

int ecore_config_rx_mode(struct bxe_softc *sc,
    struct ecore_rx_mode_ramrod_params *p)
{
 int rc;


 rc = p->rx_mode_obj->config_rx_mode(sc, p);
 if (rc < 0)
  return rc;


 if (ECORE_TEST_BIT(RAMROD_COMP_WAIT, &p->ramrod_flags)) {
  rc = p->rx_mode_obj->wait_comp(sc, p);
  if (rc)
   return rc;
 }

 return rc;
}
