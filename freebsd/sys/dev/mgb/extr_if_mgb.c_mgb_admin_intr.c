
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mgb_softc {int isr_test_flag; int ctx; int dev; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; int isc_ntxqsets; } ;


 int CSR_READ_REG (struct mgb_softc*,int ) ;
 int CSR_WRITE_REG (struct mgb_softc*,int ,int) ;
 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int MGB_INTR_ENBL_CLR ;
 int MGB_INTR_ENBL_SET ;
 int MGB_INTR_STS ;
 int MGB_INTR_STS_ANY ;
 int MGB_INTR_STS_RX (int) ;
 int MGB_INTR_STS_RX_ANY ;
 int MGB_INTR_STS_TEST ;
 int MGB_INTR_STS_TX (int) ;
 int MGB_INTR_STS_TX_ANY ;
 int device_printf (int ,char*) ;
 TYPE_1__* iflib_get_softc_ctx (int ) ;
 int iflib_rx_intr_deferred (int ,int) ;
 int iflib_tx_intr_deferred (int ,int) ;

__attribute__((used)) static int
mgb_admin_intr(void *xsc)
{
 struct mgb_softc *sc;
 if_softc_ctx_t scctx;
 uint32_t intr_sts, intr_en;
 int qidx;

 sc = xsc;
 scctx = iflib_get_softc_ctx(sc->ctx);

 intr_sts = CSR_READ_REG(sc, MGB_INTR_STS);
 intr_en = CSR_READ_REG(sc, MGB_INTR_ENBL_SET);
 intr_sts &= intr_en;







 if ((intr_sts & MGB_INTR_STS_ANY) == 0)
 {
  device_printf(sc->dev, "non-mgb interrupt triggered.\n");
  return (FILTER_SCHEDULE_THREAD);
 }
 if ((intr_sts & MGB_INTR_STS_TEST) != 0)
 {
  sc->isr_test_flag = 1;
  CSR_WRITE_REG(sc, MGB_INTR_STS, MGB_INTR_STS_TEST);
  return (FILTER_HANDLED);
 }
 if ((intr_sts & MGB_INTR_STS_RX_ANY) != 0)
 {
  for (qidx = 0; qidx < scctx->isc_nrxqsets; qidx++) {
   if ((intr_sts & MGB_INTR_STS_RX(qidx))){
    iflib_rx_intr_deferred(sc->ctx, qidx);
   }
  }
  return (FILTER_HANDLED);
 }

 if ((intr_sts & MGB_INTR_STS_TX_ANY) != 0)
 {
  for (qidx = 0; qidx < scctx->isc_ntxqsets; qidx++) {
   if ((intr_sts & MGB_INTR_STS_RX(qidx))) {

    CSR_WRITE_REG(sc, MGB_INTR_ENBL_CLR,
        MGB_INTR_STS_TX(qidx));
    CSR_WRITE_REG(sc, MGB_INTR_STS,
        MGB_INTR_STS_TX(qidx));
    iflib_tx_intr_deferred(sc->ctx, qidx);
   }
  }
  return (FILTER_HANDLED);
 }

 return (FILTER_SCHEDULE_THREAD);
}
