
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int link_status; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct oce_async_cqe_link_state {TYPE_2__ u0; } ;
struct TYPE_7__ {int link_status; int ifp; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int ASYNC_EVENT_LINK_DOWN ;
 int ASYNC_EVENT_LINK_UP ;
 int ASYNC_EVENT_LOGICAL ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int if_link_state_change (int ,int ) ;

__attribute__((used)) static void
process_link_state(POCE_SOFTC sc, struct oce_async_cqe_link_state *acqe)
{

 if ((acqe->u0.s.link_status & ~ASYNC_EVENT_LOGICAL) ==
      ASYNC_EVENT_LINK_UP) {
  sc->link_status = ASYNC_EVENT_LINK_UP;
  if_link_state_change(sc->ifp, LINK_STATE_UP);
 } else {
  sc->link_status = ASYNC_EVENT_LINK_DOWN;
  if_link_state_change(sc->ifp, LINK_STATE_DOWN);
 }
}
