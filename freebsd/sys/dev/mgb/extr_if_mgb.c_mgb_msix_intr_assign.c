
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mgb_softc {int dev; int rx_irq; int admin_irq; } ;
typedef int irq_name ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; int isc_ntxqsets; } ;


 int CSR_UPDATE_REG (struct mgb_softc*,int ,int ) ;
 int IFLIB_INTR_ADMIN ;
 int IFLIB_INTR_RX ;
 int IFLIB_INTR_TX ;
 int KASSERT (int,char*) ;
 int MGB_INTR_VEC_MAP (int,int) ;
 int MGB_INTR_VEC_RX_MAP ;
 int device_printf (int ,char*,...) ;
 struct mgb_softc* iflib_get_softc (int ) ;
 TYPE_1__* iflib_get_softc_ctx (int ) ;
 int iflib_irq_alloc_generic (int ,int *,int,int ,int ,struct mgb_softc*,int,char*) ;
 int iflib_softirq_alloc_generic (int ,int *,int ,int *,int,char*) ;
 int mgb_admin_intr ;
 int mgb_rxq_intr ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
mgb_msix_intr_assign(if_ctx_t ctx, int msix)
{
 struct mgb_softc *sc;
 if_softc_ctx_t scctx;
 int error, i, vectorid;
 char irq_name[16];

 sc = iflib_get_softc(ctx);
 scctx = iflib_get_softc_ctx(ctx);

 KASSERT(scctx->isc_nrxqsets == 1 && scctx->isc_ntxqsets == 1,
     ("num rxqsets/txqsets != 1 "));






 vectorid = 0;
 error = iflib_irq_alloc_generic(ctx, &sc->admin_irq, vectorid + 1,
     IFLIB_INTR_ADMIN, mgb_admin_intr, sc, 0, "admin");
 if (error) {
  device_printf(sc->dev,
      "Failed to register admin interrupt handler\n");
  return (error);
 }

 for (i = 0; i < scctx->isc_nrxqsets; i++) {
  vectorid++;
  snprintf(irq_name, sizeof(irq_name), "rxq%d", i);
  error = iflib_irq_alloc_generic(ctx, &sc->rx_irq, vectorid + 1,
      IFLIB_INTR_RX, mgb_rxq_intr, sc, i, irq_name);
  if (error) {
   device_printf(sc->dev,
       "Failed to register rxq %d interrupt handler\n", i);
   return (error);
  }
  CSR_UPDATE_REG(sc, MGB_INTR_VEC_RX_MAP,
      MGB_INTR_VEC_MAP(vectorid, i));
 }


 for (i = 0; i < scctx->isc_ntxqsets; i++) {
  snprintf(irq_name, sizeof(irq_name), "txq%d", i);
  iflib_softirq_alloc_generic(ctx, ((void*)0), IFLIB_INTR_TX, ((void*)0), i,
      irq_name);
 }

 return (0);
}
