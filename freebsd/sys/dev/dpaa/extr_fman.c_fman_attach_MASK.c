#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* dev; } ;
struct fman_softc {int mem_rid; int irq_rid; int err_irq_rid; int /*<<< orphan*/ * fm_handle; void* err_irq_res; void* irq_res; void* mem_res; void* qman_chan_count; void* qman_chan_base; TYPE_1__ sc_base; } ;
struct fman_config {uintptr_t irq_num; uintptr_t err_irq_num; int /*<<< orphan*/  bus_error_callback; int /*<<< orphan*/  exception_callback; int /*<<< orphan*/  mem_base_addr; int /*<<< orphan*/  fm_id; void* fman_device; } ;
typedef  int /*<<< orphan*/  qchan_range ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* pcell_t ;
typedef  void* device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**,int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (void*) ; 
 struct fman_softc* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  fman_error_callback ; 
 int /*<<< orphan*/  fman_exception_callback ; 
 int /*<<< orphan*/ * FUNC9 (struct fman_softc*,struct fman_config*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

int
FUNC13(device_t dev)
{
	struct fman_softc *sc;
	struct fman_config cfg;
	pcell_t qchan_range[2];
	phandle_t node;

	sc = FUNC5(dev);
	sc->sc_base.dev = dev;

	/* Check if MallocSmart allocator is ready */
	if (FUNC2() != E_OK) {
		FUNC7(dev, "could not initialize smart allocator.\n");
		return (ENXIO);
	}

	node = FUNC10(dev);
	if (FUNC0(node, "fsl,qman-channel-range", qchan_range,
	    sizeof(qchan_range)) <= 0) {
		FUNC7(dev, "Missing QMan channel range property!\n");
		return (ENXIO);
	}
	sc->qman_chan_base = qchan_range[0];
	sc->qman_chan_count = qchan_range[1];
	sc->mem_rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &sc->mem_rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (!sc->mem_res) {
		FUNC7(dev, "could not allocate memory.\n");
		return (ENXIO);
	}

	sc->irq_rid = 0;
	sc->irq_res = FUNC3(dev, SYS_RES_IRQ, &sc->irq_rid,
	    RF_ACTIVE);
	if (!sc->irq_res) {
		FUNC7(dev, "could not allocate interrupt.\n");
		goto err;
	}

	/*
	 * XXX: Fix FMan interrupt. This is workaround for the issue with
	 * interrupts directed to multiple CPUs by the interrupts subsystem.
	 * Workaround is to bind the interrupt to only one CPU0.
	 */
	FUNC1(FUNC12(sc->irq_res));

	sc->err_irq_rid = 1;
	sc->err_irq_res = FUNC3(dev, SYS_RES_IRQ,
	    &sc->err_irq_rid, RF_ACTIVE | RF_SHAREABLE);
	if (!sc->err_irq_res) {
		FUNC7(dev, "could not allocate error interrupt.\n");
		goto err;
	}

	/* Set FMan configuration */
	cfg.fman_device = dev;
	cfg.fm_id = FUNC6(dev);
	cfg.mem_base_addr = FUNC11(sc->mem_res);
	cfg.irq_num = (uintptr_t)sc->irq_res;
	cfg.err_irq_num = (uintptr_t)sc->err_irq_res;
	cfg.exception_callback = fman_exception_callback;
	cfg.bus_error_callback = fman_error_callback;

	sc->fm_handle = FUNC9(sc, &cfg);
	if (sc->fm_handle == NULL) {
		FUNC7(dev, "could not be configured\n");
		return (ENXIO);
	}

	return (FUNC4(dev));

err:
	FUNC8(dev);
	return (ENXIO);
}