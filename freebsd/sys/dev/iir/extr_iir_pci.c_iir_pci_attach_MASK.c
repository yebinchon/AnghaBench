#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct resource {int dummy; } ;
struct gdt_softc {int sc_ic_all_size; int /*<<< orphan*/  sc_lock; struct resource* sc_dpmem; scalar_t__ sc_init_level; int /*<<< orphan*/  sc_parent_dmat; int /*<<< orphan*/  sc_test_busy; int /*<<< orphan*/  sc_set_sema0; int /*<<< orphan*/  sc_release_event; int /*<<< orphan*/  sc_intr; int /*<<< orphan*/  sc_get_status; int /*<<< orphan*/  sc_copy_cmd; int /*<<< orphan*/  sc_class; int /*<<< orphan*/  sc_subdevice; int /*<<< orphan*/  sc_device; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_slot; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  sc_hanum; int /*<<< orphan*/  sc_devnode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ GDT_CMD_INDEX ; 
 scalar_t__ GDT_EDOOR_EN ; 
 int /*<<< orphan*/  GDT_I960_SZ ; 
 int /*<<< orphan*/  GDT_MPR ; 
 scalar_t__ GDT_MPR_EDOOR ; 
 scalar_t__ GDT_MPR_IC ; 
 scalar_t__ GDT_MPR_LDOOR ; 
 int GDT_MPR_MAGIC ; 
 int GDT_MPR_SZ ; 
 scalar_t__ GDT_PROTOCOL_VERSION ; 
 int GDT_RETRIES ; 
 scalar_t__ GDT_S_CMD_INDX ; 
 scalar_t__ GDT_S_INFO ; 
 scalar_t__ GDT_S_STATUS ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int PCI_DPMEM ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct resource*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gdt_softc*,void**) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 struct gdt_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdt_mpr_copy_cmd ; 
 int /*<<< orphan*/  gdt_mpr_get_status ; 
 int /*<<< orphan*/  gdt_mpr_intr ; 
 int /*<<< orphan*/  gdt_mpr_release_event ; 
 int /*<<< orphan*/  gdt_mpr_set_sema0 ; 
 int /*<<< orphan*/  gdt_mpr_test_busy ; 
 int /*<<< orphan*/  FUNC14 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct gdt_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct gdt_softc*) ; 
 scalar_t__ FUNC18 (struct gdt_softc*) ; 
 int /*<<< orphan*/  iir_intr ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (struct resource*) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
    struct gdt_softc    *gdt;
    struct resource     *irq = NULL;
    int                 retries, rid, error = 0;
    void                *ih;
    u_int8_t            protocol;  

    gdt = FUNC11(dev);
    FUNC21(&gdt->sc_lock, "iir", NULL, MTX_DEF);

    /* map DPMEM */
    rid = PCI_DPMEM;
    gdt->sc_dpmem = FUNC1(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
    if (gdt->sc_dpmem == NULL) {
        FUNC13(dev, "can't allocate register resources\n");
        error = ENOMEM;
        goto err;
    }

    /* get IRQ */
    rid = 0;
    irq = FUNC1(dev, SYS_RES_IRQ, &rid,
                                 RF_ACTIVE | RF_SHAREABLE);
    if (irq == NULL) {
        FUNC13(dev, "can't find IRQ value\n");
        error = ENOMEM;
        goto err;
    }

    gdt->sc_devnode = dev;
    gdt->sc_init_level = 0;
    gdt->sc_hanum = FUNC12(dev);
    gdt->sc_bus = FUNC22(dev);
    gdt->sc_slot = FUNC24(dev);
    gdt->sc_vendor = FUNC26(dev);
    gdt->sc_device = FUNC23(dev);
    gdt->sc_subdevice = FUNC25(dev);
    gdt->sc_class = GDT_MPR;
/* no FC ctr.
    if (gdt->sc_device >= GDT_PCI_PRODUCT_FC)
        gdt->sc_class |= GDT_FC;
*/

    /* initialize RP controller */
    /* check and reset interface area */
    FUNC10(gdt->sc_dpmem, GDT_MPR_IC, FUNC15(GDT_MPR_MAGIC));
    if (FUNC5(gdt->sc_dpmem, GDT_MPR_IC) != FUNC15(GDT_MPR_MAGIC)) {
	FUNC13(dev, "cannot access DPMEM at 0x%jx (shadowed?)\n",
	    FUNC27(gdt->sc_dpmem));
        error = ENXIO;
        goto err;
    }
    FUNC7(gdt->sc_dpmem, GDT_I960_SZ, FUNC15(0), GDT_MPR_SZ >> 2);

    /* Disable everything */
    FUNC9(gdt->sc_dpmem, GDT_EDOOR_EN,
	FUNC4(gdt->sc_dpmem, GDT_EDOOR_EN) | 4);
    FUNC9(gdt->sc_dpmem, GDT_MPR_EDOOR, 0xff);
    FUNC9(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS, 0);
    FUNC9(gdt->sc_dpmem, GDT_MPR_IC + GDT_CMD_INDEX, 0);

    FUNC10(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO,
	FUNC15(FUNC27(gdt->sc_dpmem)));
    FUNC9(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_CMD_INDX, 0xff);
    FUNC9(gdt->sc_dpmem, GDT_MPR_LDOOR, 1);

    FUNC0(20);
    retries = GDT_RETRIES;
    while (FUNC4(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS) != 0xff) {
        if (--retries == 0) {
            FUNC13(dev, "DEINIT failed\n");
            error = ENXIO;
            goto err;
        }
        FUNC0(1);
    }

    protocol = (uint8_t)FUNC19(FUNC5(gdt->sc_dpmem,
	    GDT_MPR_IC + GDT_S_INFO));
    FUNC9(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS, 0);
    if (protocol != GDT_PROTOCOL_VERSION) {
        FUNC13(dev, "unsupported protocol %d\n", protocol);
        error = ENXIO;
        goto err;
    }
    
    /* special command to controller BIOS */
    FUNC10(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO, FUNC15(0));
    FUNC10(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO + sizeof (u_int32_t),
	FUNC15(0));
    FUNC10(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO + 2 * sizeof (u_int32_t),
	FUNC15(1));
    FUNC10(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO + 3 * sizeof (u_int32_t),
	FUNC15(0));
    FUNC9(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_CMD_INDX, 0xfe);
    FUNC9(gdt->sc_dpmem, GDT_MPR_LDOOR, 1);

    FUNC0(20);
    retries = GDT_RETRIES;
    while (FUNC4(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS) != 0xfe) {
        if (--retries == 0) {
            FUNC13(dev, "initialization error\n");
            error = ENXIO;
            goto err;
        }
        FUNC0(1);
    }

    FUNC9(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS, 0);

    gdt->sc_ic_all_size = GDT_MPR_SZ;
    
    gdt->sc_copy_cmd = gdt_mpr_copy_cmd;
    gdt->sc_get_status = gdt_mpr_get_status;
    gdt->sc_intr = gdt_mpr_intr;
    gdt->sc_release_event = gdt_mpr_release_event;
    gdt->sc_set_sema0 = gdt_mpr_set_sema0;
    gdt->sc_test_busy = gdt_mpr_test_busy;

    /* Allocate a dmatag representing the capabilities of this attachment */
    if (FUNC2(/*parent*/FUNC3(dev),
                           /*alignemnt*/1, /*boundary*/0,
                           /*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
                           /*highaddr*/BUS_SPACE_MAXADDR,
                           /*filter*/NULL, /*filterarg*/NULL,
                           /*maxsize*/BUS_SPACE_MAXSIZE_32BIT,
			   /*nsegments*/BUS_SPACE_UNRESTRICTED,
                           /*maxsegsz*/BUS_SPACE_MAXSIZE_32BIT,
			   /*flags*/0, /*lockfunc*/busdma_lock_mutex,
			   /*lockarg*/&gdt->sc_lock, &gdt->sc_parent_dmat) != 0) {
        error = ENXIO;
        goto err;
    }
    gdt->sc_init_level++;

    if (FUNC18(gdt) != 0) {
        FUNC17(gdt);
        error = ENXIO;
        goto err;
    }

    /* Register with the XPT */
    FUNC16(gdt);

    /* associate interrupt handler */
    if (FUNC8(dev, irq, INTR_TYPE_CAM | INTR_MPSAFE, 
                        NULL, iir_intr, gdt, &ih )) {
        FUNC13(dev, "Unable to register interrupt handler\n");
        error = ENXIO;
        goto err;
    }

    FUNC14(gdt);
    return (0);
    
err:
    if (irq)
        FUNC6( dev, SYS_RES_IRQ, 0, irq );

    if (gdt->sc_dpmem)
        FUNC6( dev, SYS_RES_MEMORY, rid, gdt->sc_dpmem );
    FUNC20(&gdt->sc_lock);

    return (error);
}