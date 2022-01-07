
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int nrxqsets; int * rx_cp_rings; int def_cp_ring; } ;
typedef int if_ctx_t ;


 int bnxt_do_enable_intr (int *) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
bnxt_intr_enable(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 int i;

 bnxt_do_enable_intr(&softc->def_cp_ring);
 for (i = 0; i < softc->nrxqsets; i++)
  bnxt_do_enable_intr(&softc->rx_cp_rings[i]);

 return;
}
