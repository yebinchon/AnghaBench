
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct bnxt_softc {int * tx_cp_rings; } ;
typedef int if_ctx_t ;


 int bnxt_do_enable_intr (int *) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static int
bnxt_tx_queue_intr_enable(if_ctx_t ctx, uint16_t qid)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);

 bnxt_do_enable_intr(&softc->tx_cp_rings[qid]);
 return 0;
}
