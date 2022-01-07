
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mgb_softc {int dummy; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; int isc_ntxqsets; } ;


 int DMAC_STOP ;
 int FCT_DISABLE ;
 int MGB_DMAC_RX_START ;
 int MGB_DMAC_TX_START ;
 int MGB_FCT_RX_CTL ;
 int MGB_FCT_TX_CTL ;
 struct mgb_softc* iflib_get_softc (int ) ;
 TYPE_1__* iflib_get_softc_ctx (int ) ;
 int mgb_dmac_control (struct mgb_softc*,int ,int ,int ) ;
 int mgb_fct_control (struct mgb_softc*,int ,int ,int ) ;

__attribute__((used)) static void
mgb_stop(if_ctx_t ctx)
{
 struct mgb_softc *sc ;
 if_softc_ctx_t scctx;
 int i;

 sc = iflib_get_softc(ctx);
 scctx = iflib_get_softc_ctx(ctx);


 for (i = 0; i < scctx->isc_nrxqsets; i++) {
  mgb_dmac_control(sc, MGB_DMAC_RX_START, 0, DMAC_STOP);
  mgb_fct_control(sc, MGB_FCT_RX_CTL, 0, FCT_DISABLE);
 }
 for (i = 0; i < scctx->isc_ntxqsets; i++) {
  mgb_dmac_control(sc, MGB_DMAC_TX_START, 0, DMAC_STOP);
  mgb_fct_control(sc, MGB_FCT_TX_CTL, 0, FCT_DISABLE);
 }
}
