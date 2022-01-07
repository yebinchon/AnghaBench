
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* wait_comp ) (struct bxe_softc*,TYPE_1__*) ;int pstate; } ;
struct ecore_mcast_obj {TYPE_1__ raw; int sched_state; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 scalar_t__ ecore_state_wait (struct bxe_softc*,int ,int ) ;
 scalar_t__ stub1 (struct bxe_softc*,TYPE_1__*) ;

__attribute__((used)) static int ecore_mcast_wait(struct bxe_softc *sc,
       struct ecore_mcast_obj *o)
{
 if (ecore_state_wait(sc, o->sched_state, o->raw.pstate) ||
   o->raw.wait_comp(sc, &o->raw))
  return ECORE_TIMEOUT;

 return ECORE_SUCCESS;
}
