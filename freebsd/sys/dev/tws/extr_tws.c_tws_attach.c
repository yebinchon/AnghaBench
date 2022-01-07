
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct tws_softc {int mfa_base; int irqs; int tws_clist; int io_lock; int gen_lock; int sim_lock; int q_lock; void* reg_res_id; int * reg_res; int tws_dev; void* mfa_res_id; int * mfa_res; int ** irq_res; void** irq_res_id; scalar_t__ cmd_tag; int cmd_map; scalar_t__ dma_mem; scalar_t__ dma_mem_phys; TYPE_1__* tws_cdev; int device_id; int intr_type; void* bus_mfa_handle; void* bus_mfa_tag; void* bus_handle; void* bus_tag; int * tws_oidp; int stats_timer; int subdevice_id; int subvendor_id; } ;
typedef int device_t ;
struct TYPE_3__ {struct tws_softc* si_drv1; } ;


 int ALLOC_MEMORY_RES ;
 int CTLFLAG_RD ;
 int ENXIO ;
 scalar_t__ FAILURE ;
 int GID_OPERATOR ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int OID_AUTO ;
 int RF_ACTIVE ;
 int * SYSCTL_ADD_NODE (int *,int ,int ,int ,int ,int ,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int SYSCTL_TREE_NODE_ADD ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TWS_BIT2 ;
 int TWS_CAM_ATTACH ;
 int TWS_CTLR_INIT_FAILURE ;
 int TWS_DRIVER_VERSION_STRING ;
 int TWS_INIT_COMPLETE ;
 int TWS_INIT_FAILURE ;
 int TWS_INIT_START ;
 int TWS_INTx ;
 int TWS_MSI ;
 void* TWS_PCI_BAR0 ;
 void* TWS_PCI_BAR1 ;
 void* TWS_PCI_BAR2 ;
 int TWS_TRACE (struct tws_softc*,char*,int ,void*) ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int,int ) ;
 int UID_ROOT ;
 int _hw ;
 void* bus_alloc_resource_any (int ,int ,void**,int ) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 scalar_t__ bus_release_resource (int ,int ,void*,int *) ;
 int callout_init (int *,int) ;
 int destroy_dev (TYPE_1__*) ;
 int device_get_nameunit (int ) ;
 struct tws_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_read_config (int ,void*,int) ;
 int printf (char*) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;
 int sysctl_ctx_free (int *) ;
 int sysctl_ctx_init (int *) ;
 int tws_cam_attach (struct tws_softc*) ;
 int tws_cdevsw ;
 scalar_t__ tws_enable_msi ;
 scalar_t__ tws_init (struct tws_softc*) ;
 scalar_t__ tws_init_ctlr (struct tws_softc*) ;
 scalar_t__ tws_init_trace_q (struct tws_softc*) ;
 int tws_log (struct tws_softc*,int ) ;
 int tws_send_event (struct tws_softc*,int ) ;
 scalar_t__ tws_setup_irq (struct tws_softc*) ;
 int tws_teardown_intr (struct tws_softc*) ;

__attribute__((used)) static int
tws_attach(device_t dev)
{
    struct tws_softc *sc = device_get_softc(dev);
    u_int32_t bar;
    int error=0,i;



    sc->tws_dev = dev;
    sc->device_id = pci_get_device(dev);
    sc->subvendor_id = pci_get_subvendor(dev);
    sc->subdevice_id = pci_get_subdevice(dev);


    mtx_init( &sc->q_lock, "tws_q_lock", ((void*)0), MTX_DEF);
    mtx_init( &sc->sim_lock, "tws_sim_lock", ((void*)0), MTX_DEF);
    mtx_init( &sc->gen_lock, "tws_gen_lock", ((void*)0), MTX_DEF);
    mtx_init( &sc->io_lock, "tws_io_lock", ((void*)0), MTX_DEF | MTX_RECURSE);
    callout_init(&sc->stats_timer, 1);

    if ( tws_init_trace_q(sc) == FAILURE )
        printf("trace init failure\n");

    mtx_lock(&sc->gen_lock);
    tws_send_event(sc, TWS_INIT_START);
    mtx_unlock(&sc->gen_lock);



    TWS_TRACE(sc, "BIG endian", 0, 0);


    sysctl_ctx_init(&sc->tws_clist);
    sc->tws_oidp = SYSCTL_ADD_NODE(&sc->tws_clist,
                                   SYSCTL_STATIC_CHILDREN(_hw), OID_AUTO,
                                   device_get_nameunit(dev),
                                   CTLFLAG_RD, 0, "");
    if ( sc->tws_oidp == ((void*)0) ) {
        tws_log(sc, SYSCTL_TREE_NODE_ADD);
        goto attach_fail_1;
    }
    SYSCTL_ADD_STRING(&sc->tws_clist, SYSCTL_CHILDREN(sc->tws_oidp),
                      OID_AUTO, "driver_version", CTLFLAG_RD,
                      TWS_DRIVER_VERSION_STRING, 0, "TWS driver version");

    pci_enable_busmaster(dev);

    bar = pci_read_config(dev, TWS_PCI_BAR0, 4);
    TWS_TRACE_DEBUG(sc, "bar0 ", bar, 0);
    bar = pci_read_config(dev, TWS_PCI_BAR1, 4);
    bar = bar & ~TWS_BIT2;
    TWS_TRACE_DEBUG(sc, "bar1 ", bar, 0);






    sc->mfa_base = (u_int64_t)pci_read_config(dev, TWS_PCI_BAR2, 4);
    sc->mfa_base = sc->mfa_base & ~TWS_BIT2;
    TWS_TRACE_DEBUG(sc, "bar2 ", sc->mfa_base, 0);



    sc->reg_res_id = TWS_PCI_BAR1;
    if ((sc->reg_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
                                &(sc->reg_res_id), RF_ACTIVE))
                                == ((void*)0)) {
        tws_log(sc, ALLOC_MEMORY_RES);
        goto attach_fail_1;
    }
    sc->bus_tag = rman_get_bustag(sc->reg_res);
    sc->bus_handle = rman_get_bushandle(sc->reg_res);



    sc->mfa_res_id = TWS_PCI_BAR2;
    if ((sc->mfa_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
                          &(sc->mfa_res_id), RF_ACTIVE))
                                == ((void*)0)) {
        tws_log(sc, ALLOC_MEMORY_RES);
        goto attach_fail_2;
    }
    sc->bus_mfa_tag = rman_get_bustag(sc->mfa_res);
    sc->bus_mfa_handle = rman_get_bushandle(sc->mfa_res);



    sc->intr_type = TWS_INTx;

    if ( tws_enable_msi )
        sc->intr_type = TWS_MSI;
    if ( tws_setup_irq(sc) == FAILURE ) {
        tws_log(sc, ALLOC_MEMORY_RES);
        goto attach_fail_3;
    }







    sc->tws_cdev = make_dev(&tws_cdevsw, device_get_unit(dev),
        UID_ROOT, GID_OPERATOR, S_IRUSR | S_IWUSR, "tws%u",
        device_get_unit(dev));
    sc->tws_cdev->si_drv1 = sc;

    if ( tws_init(sc) == FAILURE ) {
        tws_log(sc, TWS_INIT_FAILURE);
        goto attach_fail_4;
    }
    if ( tws_init_ctlr(sc) == FAILURE ) {
        tws_log(sc, TWS_CTLR_INIT_FAILURE);
        goto attach_fail_4;
    }
    if ((error = tws_cam_attach(sc))) {
        tws_log(sc, TWS_CAM_ATTACH);
        goto attach_fail_4;
    }

    mtx_lock(&sc->gen_lock);
    tws_send_event(sc, TWS_INIT_COMPLETE);
    mtx_unlock(&sc->gen_lock);

    TWS_TRACE_DEBUG(sc, "attached successfully", 0, sc->device_id);
    return(0);

attach_fail_4:
    tws_teardown_intr(sc);
    destroy_dev(sc->tws_cdev);
    if (sc->dma_mem_phys)
     bus_dmamap_unload(sc->cmd_tag, sc->cmd_map);
    if (sc->dma_mem)
     bus_dmamem_free(sc->cmd_tag, sc->dma_mem, sc->cmd_map);
    if (sc->cmd_tag)
     bus_dma_tag_destroy(sc->cmd_tag);
attach_fail_3:
    for(i=0;i<sc->irqs;i++) {
        if ( sc->irq_res[i] ){
            if (bus_release_resource(sc->tws_dev,
                 SYS_RES_IRQ, sc->irq_res_id[i], sc->irq_res[i]))
                TWS_TRACE(sc, "bus irq res", 0, 0);
        }
    }

attach_fail_2:

    if ( sc->mfa_res ){
        if (bus_release_resource(sc->tws_dev,
                 SYS_RES_MEMORY, sc->mfa_res_id, sc->mfa_res))
            TWS_TRACE(sc, "bus release ", 0, sc->mfa_res_id);
    }
    if ( sc->reg_res ){
        if (bus_release_resource(sc->tws_dev,
                 SYS_RES_MEMORY, sc->reg_res_id, sc->reg_res))
            TWS_TRACE(sc, "bus release2 ", 0, sc->reg_res_id);
    }
attach_fail_1:
    mtx_destroy(&sc->q_lock);
    mtx_destroy(&sc->sim_lock);
    mtx_destroy(&sc->gen_lock);
    mtx_destroy(&sc->io_lock);
    sysctl_ctx_free(&sc->tws_clist);
    return (ENXIO);
}
