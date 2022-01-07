
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int def_cp_ring; } ;
typedef int if_ctx_t ;


 int bnxt_clear_ids (struct bnxt_softc*) ;
 int bnxt_do_disable_intr (int *) ;
 int bnxt_hwrm_func_reset (struct bnxt_softc*) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
bnxt_stop(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);

 bnxt_do_disable_intr(&softc->def_cp_ring);
 bnxt_hwrm_func_reset(softc);
 bnxt_clear_ids(softc);
 return;
}
