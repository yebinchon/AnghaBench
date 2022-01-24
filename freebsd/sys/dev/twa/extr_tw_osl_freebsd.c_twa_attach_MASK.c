#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct twa_softc* osl_ctlr_ctxt; } ;
struct twa_softc {TYPE_1__ ctlr_handle; int /*<<< orphan*/ * watchdog_callout; scalar_t__ watchdog_index; TYPE_2__* ctrl_dev; int /*<<< orphan*/  bus_dev; int /*<<< orphan*/  dma_mem_phys; int /*<<< orphan*/  dma_mem; int /*<<< orphan*/  non_dma_mem; int /*<<< orphan*/  device_id; int /*<<< orphan*/  flags; scalar_t__ irq_res_id; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * reg_res; int /*<<< orphan*/  bus_handle; int /*<<< orphan*/  bus_tag; scalar_t__ reg_res_id; int /*<<< orphan*/ * sysctl_tree; int /*<<< orphan*/  sysctl_ctxt; int /*<<< orphan*/ * sim_lock; int /*<<< orphan*/  sim_lock_handle; int /*<<< orphan*/ * q_lock; int /*<<< orphan*/  q_lock_handle; int /*<<< orphan*/ * io_lock; int /*<<< orphan*/  io_lock_handle; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {struct twa_softc* si_drv1; } ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int MTX_SPIN ; 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ PCIR_BARS ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  TW_CL_BAR_TYPE_MEM ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_ERROR_STRING ; 
 int /*<<< orphan*/  TW_OSLI_MAX_NUM_AENS ; 
 int /*<<< orphan*/  TW_OSLI_MAX_NUM_REQUESTS ; 
 int /*<<< orphan*/  TW_OSL_DRIVER_VERSION_STRING ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  _hw ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct twa_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int hz ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct twa_softc*) ; 
 scalar_t__ FUNC20 (struct twa_softc*) ; 
 int /*<<< orphan*/  FUNC21 (int,struct twa_softc*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct twa_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct twa_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  twa_cdevsw ; 
 scalar_t__ FUNC24 (struct twa_softc*) ; 
 int /*<<< orphan*/  twa_watchdog ; 

__attribute__((used)) static TW_INT32
FUNC25(device_t dev)
{
	struct twa_softc	*sc = FUNC8(dev);
	TW_INT32		bar_num;
	TW_INT32		bar0_offset;
	TW_INT32		bar_size;
	TW_INT32		error;

	FUNC21(3, sc, "entered");

	sc->ctlr_handle.osl_ctlr_ctxt = sc;

	/* Initialize the softc structure. */
	sc->bus_dev = dev;
	sc->device_id = FUNC13(dev);

	/* Initialize the mutexes right here. */
	sc->io_lock = &(sc->io_lock_handle);
	FUNC11(sc->io_lock, "tw_osl_io_lock", NULL, MTX_SPIN);
	sc->q_lock = &(sc->q_lock_handle);
	FUNC11(sc->q_lock, "tw_osl_q_lock", NULL, MTX_SPIN);
	sc->sim_lock = &(sc->sim_lock_handle);
	FUNC11(sc->sim_lock, "tw_osl_sim_lock", NULL, MTX_DEF | MTX_RECURSE);

	FUNC16(&sc->sysctl_ctxt);
	sc->sysctl_tree = FUNC0(&sc->sysctl_ctxt,
		FUNC3(_hw), OID_AUTO,
		FUNC7(dev), CTLFLAG_RD, 0, "");
	if (sc->sysctl_tree == NULL) {
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2000,
			"Cannot add sysctl tree node",
			ENXIO);
		return(ENXIO);
	}
	FUNC1(&sc->sysctl_ctxt, FUNC2(sc->sysctl_tree),
		OID_AUTO, "driver_version", CTLFLAG_RD,
		TW_OSL_DRIVER_VERSION_STRING, 0, "TWA driver version");

	/* Force the busmaster enable bit on, in case the BIOS forgot. */
	FUNC12(dev);

	/* Allocate the PCI register window. */
	if ((error = FUNC17(sc->device_id, TW_CL_BAR_TYPE_MEM,
		&bar_num, &bar0_offset, &bar_size))) {
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x201F,
			"Can't get PCI BAR info",
			error);
		FUNC22(sc);
		return(error);
	}
	sc->reg_res_id = PCIR_BARS + bar0_offset;
	if ((sc->reg_res = FUNC4(dev, SYS_RES_MEMORY,
				&(sc->reg_res_id), RF_ACTIVE))
				== NULL) {
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2002,
			"Can't allocate register window",
			ENXIO);
		FUNC22(sc);
		return(ENXIO);
	}
	sc->bus_tag = FUNC15(sc->reg_res);
	sc->bus_handle = FUNC14(sc->reg_res);

	/* Allocate and register our interrupt. */
	sc->irq_res_id = 0;
	if ((sc->irq_res = FUNC4(sc->bus_dev, SYS_RES_IRQ,
				&(sc->irq_res_id),
				RF_SHAREABLE | RF_ACTIVE)) == NULL) {
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2003,
			"Can't allocate interrupt",
			ENXIO);
		FUNC22(sc);
		return(ENXIO);
	}
	if ((error = FUNC24(sc))) {
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2004,
			"Can't set up interrupt",
			error);
		FUNC22(sc);
		return(error);
	}

	if ((error = FUNC19(sc))) {
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2005,
			"Memory allocation failure",
			error);
		FUNC22(sc);
		return(error);
	}

	/* Initialize the Common Layer for this controller. */
	if ((error = FUNC18(&sc->ctlr_handle, sc->flags, sc->device_id,
			TW_OSLI_MAX_NUM_REQUESTS, TW_OSLI_MAX_NUM_AENS,
			sc->non_dma_mem, sc->dma_mem,
			sc->dma_mem_phys
			))) {
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2006,
			"Failed to initialize Common Layer/controller",
			error);
		FUNC22(sc);
		return(error);
	}

	/* Create the control device. */
	sc->ctrl_dev = FUNC10(&twa_cdevsw, FUNC9(sc->bus_dev),
			UID_ROOT, GID_OPERATOR, S_IRUSR | S_IWUSR,
			"twa%d", FUNC9(sc->bus_dev));
	sc->ctrl_dev->si_drv1 = sc;

	if ((error = FUNC20(sc))) {
		FUNC22(sc);
		FUNC23(sc, "error = %d",
			TW_CL_SEVERITY_ERROR_STRING,
			TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
			0x2007,
			"Failed to initialize CAM",
			error);
		return(error);
	}

	sc->watchdog_index = 0;
	FUNC5(&(sc->watchdog_callout[0]), 1);
	FUNC5(&(sc->watchdog_callout[1]), 1);
	FUNC6(&(sc->watchdog_callout[0]), 5*hz, twa_watchdog, &sc->ctlr_handle);

	return(0);
}