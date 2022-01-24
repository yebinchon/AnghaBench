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
struct bktr_softc {int /*<<< orphan*/  res_mem; int /*<<< orphan*/  mem_rid; int /*<<< orphan*/  res_irq; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  res_ih; int /*<<< orphan*/  bktrdev; int /*<<< orphan*/  tunerdev; int /*<<< orphan*/  vbidev; int /*<<< orphan*/  vbimutex; int /*<<< orphan*/ * msp3400c_info; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_INTS_DISABLED ; 
 int /*<<< orphan*/  BKTR_GPIO_DMA_CTL ; 
 int /*<<< orphan*/  BKTR_INT_MASK ; 
 int /*<<< orphan*/  FIFO_RISC_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct bktr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bktr_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bktr_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bktr_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static int
FUNC11( device_t dev )
{
	struct bktr_softc *bktr = FUNC6(dev);

#ifdef BKTR_NEW_MSP34XX_DRIVER
	/* Disable the soundchip and kernel thread */
	if (bktr->msp3400c_info != NULL)
		msp_detach(bktr);
#endif

	/* Disable the brooktree device */
	FUNC0(bktr, BKTR_INT_MASK, ALL_INTS_DISABLED);
	FUNC1(bktr, BKTR_GPIO_DMA_CTL, FIFO_RISC_DISABLED);

#if defined(BKTR_USE_FREEBSD_SMBUS)
	if (bt848_i2c_detach(dev))
		printf("bktr%d: i2c_attach: can't attach\n",
		     device_get_unit(dev));
#endif
#ifdef USE_VBIMUTEX
        mtx_destroy(&bktr->vbimutex);
#endif

	/* Note: We do not free memory for RISC programs, grab buffer, vbi buffers */
	/* The memory is retained by the bktr_mem module so we can unload and */
	/* then reload the main bktr driver module */

	/* Unregister the /dev/bktrN, tunerN and vbiN devices,
	 * the aliases for unit 0 are automatically destroyed */
	FUNC5(bktr->vbidev);
	FUNC5(bktr->tunerdev);
	FUNC5(bktr->bktrdev);

	/*
	 * Deallocate resources.
	 */
	FUNC4(dev, bktr->res_irq, bktr->res_ih);
	FUNC3(dev, SYS_RES_IRQ, bktr->irq_rid, bktr->res_irq);
	FUNC3(dev, SYS_RES_MEMORY, bktr->mem_rid, bktr->res_mem);
	 
	return 0;
}