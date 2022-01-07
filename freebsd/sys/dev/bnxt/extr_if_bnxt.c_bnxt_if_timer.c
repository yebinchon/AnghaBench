
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct bnxt_softc {scalar_t__ admin_ticks; } ;
typedef int if_ctx_t ;


 scalar_t__ hz ;
 int iflib_admin_intr_deferred (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
bnxt_if_timer(if_ctx_t ctx, uint16_t qid)
{

 struct bnxt_softc *softc = iflib_get_softc(ctx);
 uint64_t ticks_now = ticks;


        if (ticks_now - softc->admin_ticks >= hz) {
  softc->admin_ticks = ticks_now;
  iflib_admin_intr_deferred(ctx);
 }

 return;
}
