
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int ntxqsets; int nrxqsets; int * rx_cp_rings; int * tx_cp_rings; } ;
typedef int if_ctx_t ;


 int bnxt_do_disable_intr (int *) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
bnxt_disable_intr(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 int i;





 for (i = 0; i < softc->ntxqsets; i++)
  bnxt_do_disable_intr(&softc->tx_cp_rings[i]);
 for (i = 0; i < softc->nrxqsets; i++)
  bnxt_do_disable_intr(&softc->rx_cp_rings[i]);

 return;
}
