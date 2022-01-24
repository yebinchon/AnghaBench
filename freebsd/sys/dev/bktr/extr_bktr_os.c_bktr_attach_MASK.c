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
typedef  int u_long ;
struct bktr_softc {int /*<<< orphan*/ * res_mem; scalar_t__ mem_rid; int /*<<< orphan*/ * res_irq; scalar_t__ irq_rid; void* vbidev; void* vbidev_alias; void* tunerdev; void* tunerdev_alias; void* bktrdev; void* bktrdev_alias; int /*<<< orphan*/  res_ih; int /*<<< orphan*/  memh; int /*<<< orphan*/  memt; int /*<<< orphan*/  bktr_xname; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_INTS_DISABLED ; 
 int /*<<< orphan*/  BKTR_GPIO_DMA_CTL ; 
 int /*<<< orphan*/  BKTR_INT_MASK ; 
 int BROOKTREE_DEF_LATENCY_VALUE ; 
 int /*<<< orphan*/  BROOKTREE_IRQ ; 
 int ENXIO ; 
 int /*<<< orphan*/  FIFO_RISC_DISABLED ; 
 int /*<<< orphan*/  INTR_TYPE_TTY ; 
 int /*<<< orphan*/  FUNC0 (struct bktr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bktr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_INTERRUPT_REG ; 
 int PCI_LATENCY_TIMER ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  bktr_cdevsw ; 
 int /*<<< orphan*/  bktr_intr ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bktr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bktr_softc*,unsigned int,int,unsigned int) ; 
 struct bktr_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,unsigned int) ; 
 void* FUNC12 (void*,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 
 int /*<<< orphan*/  tag ; 

__attribute__((used)) static int
FUNC24( device_t dev )
{
	u_long		latency;
	u_long		fun;
	unsigned int	rev;
	unsigned int	unit;
	int		error = 0;
#ifdef BROOKTREE_IRQ
	u_long		old_irq, new_irq;
#endif 

        struct bktr_softc *bktr = FUNC8(dev);

	unit = FUNC9(dev);

	/* build the device name for bktr_name() */
	FUNC23(bktr->bktr_xname, sizeof(bktr->bktr_xname), "bktr%d",unit);

	/*
	 * Enable bus mastering and Memory Mapped device
	 */
	FUNC15(dev);

	/*
	 * Map control/status registers.
	 */
	bktr->mem_rid = FUNC2(0);
	bktr->res_mem = FUNC4(dev, SYS_RES_MEMORY, 
					&bktr->mem_rid, RF_ACTIVE);

	if (!bktr->res_mem) {
		FUNC10(dev, "could not map memory\n");
		error = ENXIO;
		goto fail;
	}
	bktr->memt = FUNC22(bktr->res_mem);
	bktr->memh = FUNC21(bktr->res_mem);


	/*
	 * Disable the brooktree device
	 */
	FUNC0(bktr, BKTR_INT_MASK, ALL_INTS_DISABLED);
	FUNC1(bktr, BKTR_GPIO_DMA_CTL, FIFO_RISC_DISABLED);


#ifdef BROOKTREE_IRQ		/* from the configuration file */
	old_irq = pci_conf_read(tag, PCI_INTERRUPT_REG);
	pci_conf_write(tag, PCI_INTERRUPT_REG, BROOKTREE_IRQ);
	new_irq = pci_conf_read(tag, PCI_INTERRUPT_REG);
	printf("bktr%d: attach: irq changed from %d to %d\n",
		unit, (old_irq & 0xff), (new_irq & 0xff));
#endif 

	/*
	 * Allocate our interrupt.
	 */
	bktr->irq_rid = 0;
	bktr->res_irq = FUNC4(dev, SYS_RES_IRQ, 
				&bktr->irq_rid, RF_SHAREABLE | RF_ACTIVE);
	if (bktr->res_irq == NULL) {
		FUNC10(dev, "could not map interrupt\n");
		error = ENXIO;
		goto fail;
	}

	error = FUNC6(dev, bktr->res_irq, INTR_TYPE_TTY,
                               NULL, bktr_intr, bktr, &bktr->res_ih);
	if (error) {
		FUNC10(dev, "could not setup irq\n");
		goto fail;

	}


	/* Update the Device Control Register */
	/* on Bt878 and Bt879 cards           */
	fun = FUNC18( dev, 0x40, 2);
        fun = fun | 1;	/* Enable writes to the sub-system vendor ID */

#if defined( BKTR_430_FX_MODE )
	if (bootverbose) printf("Using 430 FX chipset compatibility mode\n");
        fun = fun | 2;	/* Enable Intel 430 FX compatibility mode */
#endif

#if defined( BKTR_SIS_VIA_MODE )
	if (bootverbose) printf("Using SiS/VIA chipset compatibility mode\n");
        fun = fun | 4;	/* Enable SiS/VIA compatibility mode (useful for
                           OPTi chipset motherboards too */
#endif
	FUNC19(dev, 0x40, fun, 2);

#if defined(BKTR_USE_FREEBSD_SMBUS)
	if (bt848_i2c_attach(dev))
		printf("bktr%d: i2c_attach: can't attach\n", unit);
#endif

/*
 * PCI latency timer.  32 is a good value for 4 bus mastering slots, if
 * you have more than four, then 16 would probably be a better value.
 */
#ifndef BROOKTREE_DEF_LATENCY_VALUE
#define BROOKTREE_DEF_LATENCY_VALUE	10
#endif
	latency = FUNC18(dev, PCI_LATENCY_TIMER, 4);
	latency = (latency >> 8) & 0xff;
	if ( bootverbose ) {
		if (latency)
			FUNC20("brooktree%d: PCI bus latency is", unit);
		else
			FUNC20("brooktree%d: PCI bus latency was 0 changing to",
				unit);
	}
	if ( !latency ) {
		latency = BROOKTREE_DEF_LATENCY_VALUE;
		FUNC19(dev, PCI_LATENCY_TIMER, latency<<8, 4);
	}
	if ( bootverbose ) {
		FUNC20(" %d.\n", (int) latency);
	}

	/* read the pci device id and revision id */
	fun = FUNC16(dev);
        rev = FUNC17(dev);

	/* call the common attach code */
	FUNC7( bktr, unit, fun, rev );

	/* make the device entries */
	bktr->bktrdev = FUNC11(&bktr_cdevsw, unit,    
				0, 0, 0444, "bktr%d",  unit);
	bktr->tunerdev= FUNC11(&bktr_cdevsw, unit+16,
				0, 0, 0444, "tuner%d", unit);
	bktr->vbidev  = FUNC11(&bktr_cdevsw, unit+32,
				0, 0, 0444, "vbi%d"  , unit);


	/* if this is unit 0 (/dev/bktr0, /dev/tuner0, /dev/vbi0) then make */
	/* alias entries to /dev/bktr /dev/tuner and /dev/vbi */
#if (__FreeBSD_version >=500000)
	if (unit == 0) {
		bktr->bktrdev_alias = make_dev_alias(bktr->bktrdev,  "bktr");
		bktr->tunerdev_alias= make_dev_alias(bktr->tunerdev, "tuner");
		bktr->vbidev_alias  = make_dev_alias(bktr->vbidev,   "vbi");
	}
#endif

	return 0;

fail:
	if (bktr->res_irq)
		FUNC5(dev, SYS_RES_IRQ, bktr->irq_rid, bktr->res_irq);
	if (bktr->res_mem)
		FUNC5(dev, SYS_RES_MEMORY, bktr->mem_rid, bktr->res_mem);
	return error;

}