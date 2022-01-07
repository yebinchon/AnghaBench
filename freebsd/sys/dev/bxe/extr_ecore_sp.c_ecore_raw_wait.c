
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_raw_obj {int pstate; int state; } ;
struct bxe_softc {int dummy; } ;


 int ecore_state_wait (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static int ecore_raw_wait(struct bxe_softc *sc, struct ecore_raw_obj *raw)
{
 return ecore_state_wait(sc, raw->state, raw->pstate);
}
