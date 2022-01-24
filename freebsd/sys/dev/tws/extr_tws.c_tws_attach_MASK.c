#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct tws_softc {int mfa_base; int irqs; int /*<<< orphan*/  tws_clist; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  gen_lock; int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  q_lock; void* reg_res_id; int /*<<< orphan*/ * reg_res; int /*<<< orphan*/  tws_dev; void* mfa_res_id; int /*<<< orphan*/ * mfa_res; int /*<<< orphan*/ ** irq_res; void** irq_res_id; scalar_t__ cmd_tag; int /*<<< orphan*/  cmd_map; scalar_t__ dma_mem; scalar_t__ dma_mem_phys; TYPE_1__* tws_cdev; int /*<<< orphan*/  device_id; int /*<<< orphan*/  intr_type; void* bus_mfa_handle; void* bus_mfa_tag; void* bus_handle; void* bus_tag; int /*<<< orphan*/ * tws_oidp; int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  subdevice_id; int /*<<< orphan*/  subvendor_id; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {struct tws_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_MEMORY_RES ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int ENXIO ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSCTL_TREE_NODE_ADD ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int TWS_BIT2 ; 
 int /*<<< orphan*/  TWS_CAM_ATTACH ; 
 int /*<<< orphan*/  TWS_CTLR_INIT_FAILURE ; 
 int /*<<< orphan*/  TWS_DRIVER_VERSION_STRING ; 
 int /*<<< orphan*/  TWS_INIT_COMPLETE ; 
 int /*<<< orphan*/  TWS_INIT_FAILURE ; 
 int /*<<< orphan*/  TWS_INIT_START ; 
 int /*<<< orphan*/  TWS_INTx ; 
 int /*<<< orphan*/  TWS_MSI ; 
 void* TWS_PCI_BAR0 ; 
 void* TWS_PCI_BAR1 ; 
 void* TWS_PCI_BAR2 ; 
 int /*<<< orphan*/  FUNC4 (struct tws_softc*,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct tws_softc*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  _hw ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct tws_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 void* FUNC27 (int /*<<< orphan*/ *) ; 
 void* FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int FUNC31 (struct tws_softc*) ; 
 int /*<<< orphan*/  tws_cdevsw ; 
 scalar_t__ tws_enable_msi ; 
 scalar_t__ FUNC32 (struct tws_softc*) ; 
 scalar_t__ FUNC33 (struct tws_softc*) ; 
 scalar_t__ FUNC34 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC35 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC37 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC38 (struct tws_softc*) ; 

__attribute__((used)) static int
FUNC39(device_t dev)
{
    struct tws_softc *sc = FUNC14(dev);
    u_int32_t bar;
    int error=0,i;

    /* no tracing yet */
    /* Look up our softc and initialize its fields. */
    sc->tws_dev = dev;
    sc->device_id = FUNC22(dev);
    sc->subvendor_id = FUNC24(dev);
    sc->subdevice_id = FUNC23(dev);

    /* Intialize mutexes */
    FUNC18( &sc->q_lock, "tws_q_lock", NULL, MTX_DEF);
    FUNC18( &sc->sim_lock,  "tws_sim_lock", NULL, MTX_DEF);
    FUNC18( &sc->gen_lock,  "tws_gen_lock", NULL, MTX_DEF);
    FUNC18( &sc->io_lock,  "tws_io_lock", NULL, MTX_DEF | MTX_RECURSE);
    FUNC11(&sc->stats_timer, 1);

    if ( FUNC34(sc) == FAILURE )
        FUNC26("trace init failure\n");
    /* send init event */
    FUNC19(&sc->gen_lock);
    FUNC36(sc, TWS_INIT_START);
    FUNC20(&sc->gen_lock);


#if _BYTE_ORDER == _BIG_ENDIAN
    FUNC4(sc, "BIG endian", 0, 0);
#endif
    /* sysctl context setup */
    FUNC30(&sc->tws_clist);
    sc->tws_oidp = FUNC0(&sc->tws_clist,
                                   FUNC3(_hw), OID_AUTO,
                                   FUNC13(dev), 
                                   CTLFLAG_RD, 0, "");
    if ( sc->tws_oidp == NULL ) {
        FUNC35(sc, SYSCTL_TREE_NODE_ADD);
        goto attach_fail_1;
    }
    FUNC1(&sc->tws_clist, FUNC2(sc->tws_oidp),
                      OID_AUTO, "driver_version", CTLFLAG_RD,
                      TWS_DRIVER_VERSION_STRING, 0, "TWS driver version");

    FUNC21(dev);

    bar = FUNC25(dev, TWS_PCI_BAR0, 4);
    FUNC5(sc, "bar0 ", bar, 0);
    bar = FUNC25(dev, TWS_PCI_BAR1, 4);
    bar = bar & ~TWS_BIT2;
    FUNC5(sc, "bar1 ", bar, 0);
 
    /* MFA base address is BAR2 register used for 
     * push mode. Firmware will evatualy move to 
     * pull mode during witch this needs to change
     */ 
#ifndef TWS_PULL_MODE_ENABLE
    sc->mfa_base = (u_int64_t)FUNC25(dev, TWS_PCI_BAR2, 4);
    sc->mfa_base = sc->mfa_base & ~TWS_BIT2;
    FUNC5(sc, "bar2 ", sc->mfa_base, 0);
#endif

    /* allocate MMIO register space */ 
    sc->reg_res_id = TWS_PCI_BAR1; /* BAR1 offset */
    if ((sc->reg_res = FUNC6(dev, SYS_RES_MEMORY,
                                &(sc->reg_res_id), RF_ACTIVE))
                                == NULL) {
        FUNC35(sc, ALLOC_MEMORY_RES);
        goto attach_fail_1;
    }
    sc->bus_tag = FUNC28(sc->reg_res);
    sc->bus_handle = FUNC27(sc->reg_res);

#ifndef TWS_PULL_MODE_ENABLE
    /* Allocate bus space for inbound mfa */ 
    sc->mfa_res_id = TWS_PCI_BAR2; /* BAR2 offset */
    if ((sc->mfa_res = FUNC6(dev, SYS_RES_MEMORY,
                          &(sc->mfa_res_id), RF_ACTIVE))
                                == NULL) {
        FUNC35(sc, ALLOC_MEMORY_RES);
        goto attach_fail_2;
    }
    sc->bus_mfa_tag = FUNC28(sc->mfa_res);
    sc->bus_mfa_handle = FUNC27(sc->mfa_res);
#endif

    /* Allocate and register our interrupt. */
    sc->intr_type = TWS_INTx; /* default */

    if ( tws_enable_msi )
        sc->intr_type = TWS_MSI;
    if ( FUNC37(sc) == FAILURE ) {
        FUNC35(sc, ALLOC_MEMORY_RES);
        goto attach_fail_3;
    }

    /*
     * Create a /dev entry for this device.  The kernel will assign us
     * a major number automatically.  We use the unit number of this
     * device as the minor number and name the character device
     * "tws<unit>".
     */
    sc->tws_cdev = FUNC16(&tws_cdevsw, FUNC15(dev),
        UID_ROOT, GID_OPERATOR, S_IRUSR | S_IWUSR, "tws%u", 
        FUNC15(dev));
    sc->tws_cdev->si_drv1 = sc;

    if ( FUNC32(sc) == FAILURE ) {
        FUNC35(sc, TWS_INIT_FAILURE);
        goto attach_fail_4;
    }
    if ( FUNC33(sc) == FAILURE ) {
        FUNC35(sc, TWS_CTLR_INIT_FAILURE);
        goto attach_fail_4;
    }
    if ((error = FUNC31(sc))) {
        FUNC35(sc, TWS_CAM_ATTACH);
        goto attach_fail_4;
    }
    /* send init complete event */
    FUNC19(&sc->gen_lock);
    FUNC36(sc, TWS_INIT_COMPLETE);
    FUNC20(&sc->gen_lock);
        
    FUNC5(sc, "attached successfully", 0, sc->device_id);
    return(0);

attach_fail_4:
    FUNC38(sc);
    FUNC12(sc->tws_cdev);
    if (sc->dma_mem_phys)
	    FUNC8(sc->cmd_tag, sc->cmd_map);
    if (sc->dma_mem)
	    FUNC9(sc->cmd_tag, sc->dma_mem, sc->cmd_map);
    if (sc->cmd_tag)
	    FUNC7(sc->cmd_tag);
attach_fail_3:
    for(i=0;i<sc->irqs;i++) {
        if ( sc->irq_res[i] ){
            if (FUNC10(sc->tws_dev,
                 SYS_RES_IRQ, sc->irq_res_id[i], sc->irq_res[i]))
                FUNC4(sc, "bus irq res", 0, 0);
        }
    }
#ifndef TWS_PULL_MODE_ENABLE
attach_fail_2: 
#endif
    if ( sc->mfa_res ){
        if (FUNC10(sc->tws_dev,
                 SYS_RES_MEMORY, sc->mfa_res_id, sc->mfa_res))
            FUNC4(sc, "bus release ", 0, sc->mfa_res_id);
    }
    if ( sc->reg_res ){
        if (FUNC10(sc->tws_dev,
                 SYS_RES_MEMORY, sc->reg_res_id, sc->reg_res))
            FUNC4(sc, "bus release2 ", 0, sc->reg_res_id);
    }
attach_fail_1:
    FUNC17(&sc->q_lock);
    FUNC17(&sc->sim_lock);
    FUNC17(&sc->gen_lock);
    FUNC17(&sc->io_lock);
    FUNC29(&sc->tws_clist);
    return (ENXIO);
}