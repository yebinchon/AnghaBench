
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* if_ctx_t ;
struct TYPE_5__ {scalar_t__ isc_intr; } ;
struct TYPE_6__ {int * ifc_msix_mem; int ifc_dev; TYPE_1__ ifc_softc_ctx; int ifc_legacy_irq; } ;


 scalar_t__ IFLIB_INTR_LEGACY ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int iflib_irq_free (TYPE_2__*,int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
iflib_free_intr_mem(if_ctx_t ctx)
{

 if (ctx->ifc_softc_ctx.isc_intr != IFLIB_INTR_MSIX) {
  iflib_irq_free(ctx, &ctx->ifc_legacy_irq);
 }
 if (ctx->ifc_softc_ctx.isc_intr != IFLIB_INTR_LEGACY) {
  pci_release_msi(ctx->ifc_dev);
 }
 if (ctx->ifc_msix_mem != ((void*)0)) {
  bus_release_resource(ctx->ifc_dev, SYS_RES_MEMORY,
      rman_get_rid(ctx->ifc_msix_mem), ctx->ifc_msix_mem);
  ctx->ifc_msix_mem = ((void*)0);
 }
}
