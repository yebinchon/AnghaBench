
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct twe_softc* ich_arg; int ich_func; } ;
struct twe_softc {TYPE_2__ twe_ich; TYPE_1__* twe_dev_t; int twe_dev; int twe_immediate_map; int twe_immediate; int twe_immediate_dmat; int twe_parent_dmat; int twe_buffer_dmat; int twe_io_lock; int twe_cmd; int twe_cmdmap; int twe_cmd_dmat; int twe_intr; int * twe_irq; int * twe_io; int twe_config_lock; } ;
struct sysctl_oid {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {struct twe_softc* si_drv1; } ;
typedef int TWE_Command ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int CTLFLAG_RD ;
 int DFLTPHYS ;
 int ENOMEM ;
 int ENXIO ;
 int GID_OPERATOR ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MTX_DEF ;
 int OID_AUTO ;
 int PAGE_SIZE ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int ,int ,int ,int ,int ,int ,char*) ;
 int SYSCTL_ADD_STRING (int ,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TWE_DRIVER_VERSION_STRING ;
 int TWE_IO_CONFIG_REG ;
 int TWE_MAX_SGL_LENGTH ;
 int TWE_Q_LENGTH ;
 int UID_ROOT ;
 int _hw ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct twe_softc*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct twe_softc*,int *) ;
 int * busdma_lock_mutex ;
 int bzero (int ,int) ;
 scalar_t__ config_intrhook_establish (TYPE_2__*) ;
 int debug_called (int) ;
 int device_get_nameunit (int ) ;
 struct twe_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_unit (int ) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_enable_busmaster (int ) ;
 int sx_init (int *,char*) ;
 int twe_cdevsw ;
 int twe_describe_controller (struct twe_softc*) ;
 int twe_free (struct twe_softc*) ;
 int twe_intrhook ;
 int twe_pci_intr ;
 int twe_printf (struct twe_softc*,char*) ;
 int twe_setup (struct twe_softc*) ;
 int twe_setup_request_dmamap ;

__attribute__((used)) static int
twe_attach(device_t dev)
{
    struct twe_softc *sc;
    struct sysctl_oid *sysctl_tree;
    int rid, error;

    debug_called(4);




    sc = device_get_softc(dev);
    sc->twe_dev = dev;
    mtx_init(&sc->twe_io_lock, "twe I/O", ((void*)0), MTX_DEF);
    sx_init(&sc->twe_config_lock, "twe config");







    sysctl_tree = SYSCTL_ADD_NODE(device_get_sysctl_ctx(dev),
 SYSCTL_STATIC_CHILDREN(_hw), OID_AUTO,
 device_get_nameunit(dev), CTLFLAG_RD, 0, "");
    if (sysctl_tree == ((void*)0)) {
 twe_printf(sc, "cannot add sysctl tree node\n");
 return (ENXIO);
    }
    SYSCTL_ADD_STRING(device_get_sysctl_ctx(dev), SYSCTL_CHILDREN(sysctl_tree),
 OID_AUTO, "driver_version", CTLFLAG_RD, TWE_DRIVER_VERSION_STRING, 0,
 "TWE driver version");




    pci_enable_busmaster(dev);




    rid = TWE_IO_CONFIG_REG;
    if ((sc->twe_io = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
        RF_ACTIVE)) == ((void*)0)) {
 twe_printf(sc, "can't allocate register window\n");
 twe_free(sc);
 return(ENXIO);
    }




    if (bus_dma_tag_create(bus_get_dma_tag(dev),
      1, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_SPACE_UNRESTRICTED,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0),
      ((void*)0),
      &sc->twe_parent_dmat)) {
 twe_printf(sc, "can't allocate parent DMA tag\n");
 twe_free(sc);
 return(ENOMEM);
    }




    rid = 0;
    if ((sc->twe_irq = bus_alloc_resource_any(sc->twe_dev, SYS_RES_IRQ,
        &rid, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
 twe_printf(sc, "can't allocate interrupt\n");
 twe_free(sc);
 return(ENXIO);
    }
    if (bus_setup_intr(sc->twe_dev, sc->twe_irq, INTR_TYPE_BIO | INTR_ENTROPY | INTR_MPSAFE,
         ((void*)0), twe_pci_intr, sc, &sc->twe_intr)) {
 twe_printf(sc, "can't set up interrupt\n");
 twe_free(sc);
 return(ENXIO);
    }




    if (bus_dma_tag_create(sc->twe_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      sizeof(TWE_Command) *
      TWE_Q_LENGTH, 1,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0),
      ((void*)0),
      &sc->twe_cmd_dmat)) {
 twe_printf(sc, "can't allocate data buffer DMA tag\n");
 twe_free(sc);
 return(ENOMEM);
    }



    if (bus_dmamem_alloc(sc->twe_cmd_dmat, (void **)&sc->twe_cmd,
    BUS_DMA_NOWAIT, &sc->twe_cmdmap)) {
 twe_printf(sc, "can't allocate command memory\n");
 return(ENOMEM);
    }
    bus_dmamap_load(sc->twe_cmd_dmat, sc->twe_cmdmap, sc->twe_cmd,
      sizeof(TWE_Command) * TWE_Q_LENGTH,
      twe_setup_request_dmamap, sc, 0);
    bzero(sc->twe_cmd, sizeof(TWE_Command) * TWE_Q_LENGTH);




    if (bus_dma_tag_create(sc->twe_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      (TWE_MAX_SGL_LENGTH - 1) * PAGE_SIZE,
      TWE_MAX_SGL_LENGTH,
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_DMA_ALLOCNOW,
      busdma_lock_mutex,
      &sc->twe_io_lock,
      &sc->twe_buffer_dmat)) {
 twe_printf(sc, "can't allocate data buffer DMA tag\n");
 twe_free(sc);
 return(ENOMEM);
    }




    if (bus_dma_tag_create(sc->twe_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      DFLTPHYS, 1,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0),
      ((void*)0),
      &sc->twe_immediate_dmat)) {
 twe_printf(sc, "can't allocate data buffer DMA tag\n");
 twe_free(sc);
 return(ENOMEM);
    }



     if (bus_dmamem_alloc(sc->twe_immediate_dmat, (void **)&sc->twe_immediate,
     BUS_DMA_NOWAIT, &sc->twe_immediate_map)) {
 twe_printf(sc, "can't allocate memory for immediate requests\n");
 return(ENOMEM);
     }




    if ((error = twe_setup(sc))) {
 twe_free(sc);
 return(error);
    }




    twe_describe_controller(sc);




    sc->twe_dev_t = make_dev(&twe_cdevsw, device_get_unit(sc->twe_dev), UID_ROOT, GID_OPERATOR,
        S_IRUSR | S_IWUSR, "twe%d", device_get_unit(sc->twe_dev));
    sc->twe_dev_t->si_drv1 = sc;






    sc->twe_ich.ich_func = twe_intrhook;
    sc->twe_ich.ich_arg = sc;
    if (config_intrhook_establish(&sc->twe_ich) != 0) {
 twe_printf(sc, "can't establish configuration hook\n");
 twe_free(sc);
 return(ENXIO);
    }

    return(0);
}
