
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct amr_softc {int amr_hw_lock; int amr_list_lock; int amr_dev; int amr_buffer64_dmat; int amr_parent_dmat; int amr_buffer_dmat; int amr_intr; int * amr_irq; int * amr_reg; int amr_bhandle; int amr_btag; int amr_type; } ;
struct amr_ident {int flags; } ;
typedef int device_t ;


 int AMR_ID_DO_SG64 ;
 int AMR_ID_QUARTZ ;
 scalar_t__ AMR_IS_QUARTZ (struct amr_softc*) ;
 scalar_t__ AMR_IS_SG64 (struct amr_softc*) ;
 int AMR_NSEG ;
 int AMR_TYPE_QUARTZ ;
 int AMR_TYPE_SG64 ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int DFLTPHYS ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MTX_DEF ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int amr_attach (struct amr_softc*) ;
 int amr_ccb_map (struct amr_softc*) ;
 struct amr_ident* amr_find_ident (int ) ;
 scalar_t__ amr_force_sg32 ;
 int amr_pci_free (struct amr_softc*) ;
 int amr_pci_intr ;
 int amr_setup_mbox (struct amr_softc*) ;
 int amr_sglist_map (struct amr_softc*) ;
 void* bus_alloc_resource_any (int ,int,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct amr_softc*,int *) ;
 int * busdma_lock_mutex ;
 int bzero (struct amr_softc*,int) ;
 int debug (int,char*) ;
 int debug_called (int) ;
 struct amr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_enable_busmaster (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
amr_pci_attach(device_t dev)
{
    struct amr_softc *sc;
    struct amr_ident *id;
    int rid, rtype, error;

    debug_called(1);




    sc = device_get_softc(dev);
    bzero(sc, sizeof(*sc));
    sc->amr_dev = dev;


    error = ENXIO;




    if ((id = amr_find_ident(dev)) == ((void*)0))
 return (ENXIO);

    if (id->flags & AMR_ID_QUARTZ) {
 sc->amr_type |= AMR_TYPE_QUARTZ;
    }

    if ((amr_force_sg32 == 0) && (id->flags & AMR_ID_DO_SG64) &&
 (sizeof(vm_paddr_t) > 4)) {
 device_printf(dev, "Using 64-bit DMA\n");
 sc->amr_type |= AMR_TYPE_SG64;
    }


    pci_enable_busmaster(dev);




    rid = PCIR_BAR(0);
    rtype = AMR_IS_QUARTZ(sc) ? SYS_RES_MEMORY : SYS_RES_IOPORT;
    sc->amr_reg = bus_alloc_resource_any(dev, rtype, &rid, RF_ACTIVE);
    if (sc->amr_reg == ((void*)0)) {
 device_printf(sc->amr_dev, "can't allocate register window\n");
 goto out;
    }
    sc->amr_btag = rman_get_bustag(sc->amr_reg);
    sc->amr_bhandle = rman_get_bushandle(sc->amr_reg);




    rid = 0;
    sc->amr_irq = bus_alloc_resource_any(sc->amr_dev, SYS_RES_IRQ, &rid,
        RF_SHAREABLE | RF_ACTIVE);
    if (sc->amr_irq == ((void*)0)) {
        device_printf(sc->amr_dev, "can't allocate interrupt\n");
 goto out;
    }
    if (bus_setup_intr(sc->amr_dev, sc->amr_irq,
 INTR_TYPE_BIO | INTR_ENTROPY | INTR_MPSAFE, ((void*)0), amr_pci_intr,
 sc, &sc->amr_intr)) {
        device_printf(sc->amr_dev, "can't set up interrupt\n");
 goto out;
    }

    debug(2, "interrupt attached");


    error = ENOMEM;




    if (bus_dma_tag_create(bus_get_dma_tag(dev),
      1, 0,
      AMR_IS_SG64(sc) ?
      BUS_SPACE_MAXADDR :
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      BUS_SPACE_MAXSIZE,
      BUS_SPACE_UNRESTRICTED,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0), ((void*)0),
      &sc->amr_parent_dmat)) {
 device_printf(dev, "can't allocate parent DMA tag\n");
 goto out;
    }




    if (bus_dma_tag_create(sc->amr_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      DFLTPHYS,
      AMR_NSEG,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      busdma_lock_mutex,
      &sc->amr_list_lock,
      &sc->amr_buffer_dmat)) {
        device_printf(sc->amr_dev, "can't allocate buffer DMA tag\n");
 goto out;
    }

    if (bus_dma_tag_create(sc->amr_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      DFLTPHYS,
      AMR_NSEG,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      busdma_lock_mutex,
      &sc->amr_list_lock,
      &sc->amr_buffer64_dmat)) {
        device_printf(sc->amr_dev, "can't allocate buffer DMA tag\n");
 goto out;
    }

    debug(2, "dma tag done");




    mtx_init(&sc->amr_list_lock, "AMR List Lock", ((void*)0), MTX_DEF);
    mtx_init(&sc->amr_hw_lock, "AMR HW Lock", ((void*)0), MTX_DEF);
    if ((error = amr_setup_mbox(sc)) != 0)
 goto out;

    debug(2, "mailbox setup");




    if ((error = amr_sglist_map(sc)) != 0)
 goto out;
    debug(2, "s/g list mapped");

    if ((error = amr_ccb_map(sc)) != 0)
 goto out;
    debug(2, "ccb mapped");





    error = amr_attach(sc);

out:
    if (error)
 amr_pci_free(sc);
    return(error);
}
