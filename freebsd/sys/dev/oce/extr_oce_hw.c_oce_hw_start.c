
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct link_status {scalar_t__ logical_link_status; scalar_t__ qos_link_speed; int phys_port_speed; int member_0; } ;
struct TYPE_9__ {int qos_link_speed; TYPE_1__** eq; int mq; int link_speed; int ifp; scalar_t__ link_status; } ;
struct TYPE_8__ {int eq_id; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int FALSE ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ NTWK_LOGICAL_LINK_DOWN ;
 scalar_t__ NTWK_LOGICAL_LINK_UP ;
 int TRUE ;
 int if_link_state_change (int ,int ) ;
 int oce_arm_eq (TYPE_2__*,int ,int ,int ,int ) ;
 int oce_first_mcc_cmd (TYPE_2__*) ;
 int oce_get_link_status (TYPE_2__*,struct link_status*) ;
 int oce_hw_intr_enable (TYPE_2__*) ;
 int oce_start_mq (int ) ;

int
oce_hw_start(POCE_SOFTC sc)
{
 struct link_status link = { 0 };
 int rc = 0;

 rc = oce_get_link_status(sc, &link);
 if (rc)
  return 1;

 if (link.logical_link_status == NTWK_LOGICAL_LINK_UP) {
  sc->link_status = NTWK_LOGICAL_LINK_UP;
  if_link_state_change(sc->ifp, LINK_STATE_UP);
 } else {
  sc->link_status = NTWK_LOGICAL_LINK_DOWN;
  if_link_state_change(sc->ifp, LINK_STATE_DOWN);
 }

 sc->link_speed = link.phys_port_speed;
 sc->qos_link_speed = (uint32_t )link.qos_link_speed * 10;

 rc = oce_start_mq(sc->mq);




 oce_hw_intr_enable(sc);
 oce_arm_eq(sc, sc->eq[0]->eq_id, 0, TRUE, FALSE);




 oce_first_mcc_cmd(sc);

 return rc;
}
