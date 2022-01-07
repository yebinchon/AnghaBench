
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ciss_softc {int ciss_regs_rid; int ciss_cfg_rid; int* ciss_irq_rid; int ciss_interrupt_mask; int ciss_buffer_dmat; int ciss_mtx; int ciss_parent_dmat; int ciss_dev; int ciss_intr; int * ciss_irq_resource; struct ciss_perf_config* ciss_perf; struct ciss_config_table* ciss_cfg; int ciss_max_requests; int * ciss_regs_resource; int * ciss_cfg_resource; int ciss_regs_btag; int ciss_regs_bhandle; } ;
struct ciss_perf_config {int dummy; } ;
struct ciss_config_table {int supported_methods; int requested_method; int active_method; int host_driver; int interrupt_coalesce_count; int interrupt_coalesce_delay; scalar_t__ command_physlimit; scalar_t__ transport_offset; int * signature; int max_outstanding_commands; } ;
struct TYPE_2__ {int flags; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int CISS_BOARD_SA5 ;
 int CISS_BOARD_SA5B ;
 int CISS_BOARD_SIMPLE ;
 int CISS_DRIVER_SCSI_PREFETCH ;
 int CISS_INTERRUPT_COALESCE_COUNT ;
 int CISS_INTERRUPT_COALESCE_DELAY ;
 int CISS_MAX_REQUESTS ;
 int CISS_MAX_SG_ELEMENTS ;
 int CISS_TL_PERF_INTR_MSI ;
 int CISS_TL_PERF_INTR_OPQ ;
 int CISS_TL_SIMPLE_BAR_REGS ;
 int CISS_TL_SIMPLE_CFG_BAR ;
 int CISS_TL_SIMPLE_CFG_OFF ;
 int CISS_TL_SIMPLE_DISABLE_INTERRUPTS (struct ciss_softc*) ;
 int CISS_TL_SIMPLE_IDBR ;
 int CISS_TL_SIMPLE_INTR_OPQ_SA5 ;
 int CISS_TL_SIMPLE_INTR_OPQ_SA5B ;
 int CISS_TL_SIMPLE_READ (struct ciss_softc*,int ) ;
 int CISS_TRANSPORT_METHOD_PERF ;
 int CISS_TRANSPORT_METHOD_SIMPLE ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int PAGE_SIZE ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,void*,struct ciss_softc*,int *) ;
 int * busdma_lock_mutex ;
 int ciss_force_interrupt ;
 int ciss_force_transport ;
 scalar_t__ ciss_init_perf (struct ciss_softc*) ;
 void* ciss_intr ;
 int ciss_lookup (int ) ;
 void* ciss_perf_intr ;
 void* ciss_perf_msi_intr ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 scalar_t__ ciss_setup_msix (struct ciss_softc*) ;
 scalar_t__ ciss_update_config (struct ciss_softc*) ;
 TYPE_1__* ciss_vendor_data ;
 int ciss_wait_adapter (struct ciss_softc*) ;
 int debug (int,char*,struct ciss_config_table*) ;
 int debug_called (int) ;
 int min (int ,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_end (int *) ;
 int rman_get_start (int *) ;
 scalar_t__ rman_get_virtual (int *) ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static int
ciss_init_pci(struct ciss_softc *sc)
{
    uintptr_t cbase, csize, cofs;
    uint32_t method, supported_methods;
    int error, sqmask, i;
    void *intr;

    debug_called(1);




    i = ciss_lookup(sc->ciss_dev);
    if (i < 0) {
 ciss_printf(sc, "unknown adapter type\n");
 return (ENXIO);
    }

    if (ciss_vendor_data[i].flags & CISS_BOARD_SA5) {
 sqmask = CISS_TL_SIMPLE_INTR_OPQ_SA5;
    } else if (ciss_vendor_data[i].flags & CISS_BOARD_SA5B) {
 sqmask = CISS_TL_SIMPLE_INTR_OPQ_SA5B;
    } else {





 sqmask = ~0;
    }





    error = ENXIO;
    sc->ciss_regs_rid = CISS_TL_SIMPLE_BAR_REGS;
    if ((sc->ciss_regs_resource =
  bus_alloc_resource_any(sc->ciss_dev, SYS_RES_MEMORY,
    &sc->ciss_regs_rid, RF_ACTIVE)) == ((void*)0)) {
 ciss_printf(sc, "can't allocate register window\n");
 return(ENXIO);
    }
    sc->ciss_regs_bhandle = rman_get_bushandle(sc->ciss_regs_resource);
    sc->ciss_regs_btag = rman_get_bustag(sc->ciss_regs_resource);





    sc->ciss_cfg_rid = CISS_TL_SIMPLE_READ(sc, CISS_TL_SIMPLE_CFG_BAR) & 0xffff;
    if (sc->ciss_cfg_rid != sc->ciss_regs_rid) {
 if ((sc->ciss_cfg_resource =
      bus_alloc_resource_any(sc->ciss_dev, SYS_RES_MEMORY,
        &sc->ciss_cfg_rid, RF_ACTIVE)) == ((void*)0)) {
     ciss_printf(sc, "can't allocate config window\n");
     return(ENXIO);
 }
 cbase = (uintptr_t)rman_get_virtual(sc->ciss_cfg_resource);
 csize = rman_get_end(sc->ciss_cfg_resource) -
     rman_get_start(sc->ciss_cfg_resource) + 1;
    } else {
 cbase = (uintptr_t)rman_get_virtual(sc->ciss_regs_resource);
 csize = rman_get_end(sc->ciss_regs_resource) -
     rman_get_start(sc->ciss_regs_resource) + 1;
    }
    cofs = CISS_TL_SIMPLE_READ(sc, CISS_TL_SIMPLE_CFG_OFF);





    if ((cofs + sizeof(struct ciss_config_table)) > csize) {
 ciss_printf(sc, "config table outside window\n");
 return(ENXIO);
    }
    sc->ciss_cfg = (struct ciss_config_table *)(cbase + cofs);
    debug(1, "config struct at %p", sc->ciss_cfg);





    sc->ciss_max_requests = min(CISS_MAX_REQUESTS, sc->ciss_cfg->max_outstanding_commands);





    if (strncmp(sc->ciss_cfg->signature, "CISS", 4)) {
 ciss_printf(sc, "config signature mismatch (got '%c%c%c%c')\n",
      sc->ciss_cfg->signature[0], sc->ciss_cfg->signature[1],
      sc->ciss_cfg->signature[2], sc->ciss_cfg->signature[3]);
 return(ENXIO);
    }




    if (!(sc->ciss_cfg->supported_methods &
 (CISS_TRANSPORT_METHOD_SIMPLE | CISS_TRANSPORT_METHOD_PERF))) {
 ciss_printf(sc, "No supported transport layers: 0x%x\n",
     sc->ciss_cfg->supported_methods);
    }

    switch (ciss_force_transport) {
    case 1:
 supported_methods = CISS_TRANSPORT_METHOD_SIMPLE;
 break;
    case 2:
 supported_methods = CISS_TRANSPORT_METHOD_PERF;
 break;
    default:




        if (ciss_vendor_data[i].flags & CISS_BOARD_SIMPLE)
                supported_methods = CISS_TRANSPORT_METHOD_SIMPLE;
        else
                supported_methods = sc->ciss_cfg->supported_methods;
        break;
    }

setup:
    if ((supported_methods & CISS_TRANSPORT_METHOD_PERF) != 0) {
 method = CISS_TRANSPORT_METHOD_PERF;
 sc->ciss_perf = (struct ciss_perf_config *)(cbase + cofs +
     sc->ciss_cfg->transport_offset);
 if (ciss_init_perf(sc)) {
     supported_methods &= ~method;
     goto setup;
 }
    } else if (supported_methods & CISS_TRANSPORT_METHOD_SIMPLE) {
 method = CISS_TRANSPORT_METHOD_SIMPLE;
    } else {
 ciss_printf(sc, "No supported transport methods: 0x%x\n",
     sc->ciss_cfg->supported_methods);
 return(ENXIO);
    }





    sc->ciss_cfg->requested_method = method;
    sc->ciss_cfg->command_physlimit = 0;
    sc->ciss_cfg->interrupt_coalesce_delay = CISS_INTERRUPT_COALESCE_DELAY;
    sc->ciss_cfg->interrupt_coalesce_count = CISS_INTERRUPT_COALESCE_COUNT;





    if (ciss_update_config(sc)) {
 ciss_printf(sc, "adapter refuses to accept config update (IDBR 0x%x)\n",
      CISS_TL_SIMPLE_READ(sc, CISS_TL_SIMPLE_IDBR));
 return(ENXIO);
    }
    if ((sc->ciss_cfg->active_method & method) == 0) {
 supported_methods &= ~method;
 if (supported_methods == 0) {
     ciss_printf(sc, "adapter refuses to go into available transports "
  "mode (0x%x, 0x%x)\n", supported_methods,
  sc->ciss_cfg->active_method);
     return(ENXIO);
 } else
     goto setup;
    }




    if ((error = ciss_wait_adapter(sc)) != 0)
 return(error);




    sc->ciss_irq_rid[0] = 0;
    if (method == CISS_TRANSPORT_METHOD_PERF) {
 ciss_printf(sc, "PERFORMANT Transport\n");
 if ((ciss_force_interrupt != 1) && (ciss_setup_msix(sc) == 0)) {
     intr = ciss_perf_msi_intr;
 } else {
     intr = ciss_perf_intr;
 }





 sc->ciss_interrupt_mask = CISS_TL_PERF_INTR_OPQ | CISS_TL_PERF_INTR_MSI;

    } else {
 ciss_printf(sc, "SIMPLE Transport\n");

 if (ciss_force_interrupt == 2)

     ciss_setup_msix(sc);
 sc->ciss_perf = ((void*)0);
 intr = ciss_intr;
 sc->ciss_interrupt_mask = sqmask;
    }




    CISS_TL_SIMPLE_DISABLE_INTERRUPTS(sc);




    if ((sc->ciss_irq_resource =
  bus_alloc_resource_any(sc->ciss_dev, SYS_RES_IRQ, &sc->ciss_irq_rid[0],
    RF_ACTIVE | RF_SHAREABLE)) == ((void*)0)) {
 ciss_printf(sc, "can't allocate interrupt\n");
 return(ENXIO);
    }

    if (bus_setup_intr(sc->ciss_dev, sc->ciss_irq_resource,
         INTR_TYPE_CAM|INTR_MPSAFE, ((void*)0), intr, sc,
         &sc->ciss_intr)) {
 ciss_printf(sc, "can't set up interrupt\n");
 return(ENXIO);
    }
    if (bus_dma_tag_create(bus_get_dma_tag(sc->ciss_dev),
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_SPACE_UNRESTRICTED,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0), ((void*)0),
      &sc->ciss_parent_dmat)) {
 ciss_printf(sc, "can't allocate parent DMA tag\n");
 return(ENOMEM);
    }





    if (bus_dma_tag_create(sc->ciss_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      (CISS_MAX_SG_ELEMENTS - 1) * PAGE_SIZE,
      CISS_MAX_SG_ELEMENTS,
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_DMA_ALLOCNOW,
      busdma_lock_mutex, &sc->ciss_mtx,
      &sc->ciss_buffer_dmat)) {
 ciss_printf(sc, "can't allocate buffer DMA tag\n");
 return(ENOMEM);
    }
    return(0);
}
