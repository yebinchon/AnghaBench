#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  rm_descr; int /*<<< orphan*/  rm_type; int /*<<< orphan*/  rm_end; scalar_t__ rm_start; } ;
struct pcib_secbus {int sub_reg; int /*<<< orphan*/ * res; void* sub; void* sec; TYPE_1__ rman; void* dev; } ;
struct vmd_softc {void* vmd_dev; int* vmd_regs_rid; int vmd_io_rid; int vmd_msix_count; int /*<<< orphan*/ * vmd_child; TYPE_3__* vmd_irq; struct pcib_secbus vmd_bus; int /*<<< orphan*/ ** vmd_regs_resource; int /*<<< orphan*/  vmd_bhandle; int /*<<< orphan*/  vmd_btag; int /*<<< orphan*/ * vmd_io_resource; int /*<<< orphan*/  vmd_irq_lock; int /*<<< orphan*/  vmd_irq_task; int /*<<< orphan*/  vmd_irq_tq; } ;
struct vmd_irq {int dummy; } ;
typedef  void* device_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int vmd_rid; int vmd_instance; int /*<<< orphan*/ * vmd_res; int /*<<< orphan*/  vmd_handle; int /*<<< orphan*/  vmd_list; struct vmd_softc* vmd_sc; } ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PCIM_BAR_MEM_64 ; 
 int PCIM_BAR_MEM_TYPE ; 
 int FUNC0 (int) ; 
 int PCIR_IOBASEL_1 ; 
 int /*<<< orphan*/  PCIR_PRIBUS_2 ; 
 int PCIR_SECBUS_1 ; 
 int PCIR_SUBBUS_1 ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  PCI_BUSMAX ; 
 int /*<<< orphan*/  PCI_RES_BUS ; 
 int /*<<< orphan*/  PI_DISK ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmd_softc*) ; 
 int VMD_MAX_BAR ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,void*) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vmd_softc*,int) ; 
 int /*<<< orphan*/ * FUNC9 (void*,int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (void*) ; 
 void* FUNC11 (void*) ; 
 struct vmd_softc* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (void*,int*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int FUNC19 (void*) ; 
 int FUNC20 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 void* FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *) ; 
 void* FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (TYPE_1__*) ; 
 int FUNC29 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC30 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  FUNC34 (struct vmd_softc*) ; 
 int /*<<< orphan*/  vmd_handle_irq ; 
 int /*<<< orphan*/  vmd_intr ; 
 void* FUNC35 (void*,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC36(device_t dev)
{
	struct vmd_softc *sc;
	struct pcib_secbus *bus;
	uint32_t bar;
	int i, j, error;
	int rid, sec_reg;
	static int b;
	static int s;
	static int f;
	int min_count = 1;
	char buf[64];

	sc = FUNC12(dev);
	FUNC8(sc, sizeof(*sc));
	sc->vmd_dev = dev;
	b = s = f = 0;

	FUNC18(dev);

#ifdef TASK_QUEUE_INTR
	sc->vmd_irq_tq = taskqueue_create_fast("vmd_taskq", M_NOWAIT,
	    taskqueue_thread_enqueue, &sc->vmd_irq_tq);
	taskqueue_start_threads(&sc->vmd_irq_tq, 1, PI_DISK, "%s taskq",
            device_get_nameunit(sc->vmd_dev));
	TASK_INIT(&sc->vmd_irq_task, 0, vmd_handle_irq, sc);
#else
	FUNC16(&sc->vmd_irq_lock, "VMD IRQ lock", NULL, MTX_DEF);
#endif
	for (i = 0, j = 0; i < VMD_MAX_BAR; i++, j++ ) {
		sc->vmd_regs_rid[i] = FUNC0(j);
		bar = FUNC20(dev, FUNC0(0), 4);
		if (FUNC1(bar) && (bar & PCIM_BAR_MEM_TYPE) ==
		    PCIM_BAR_MEM_64)
			j++;
		if ((sc->vmd_regs_resource[i] = FUNC5(
		    sc->vmd_dev, SYS_RES_MEMORY, &sc->vmd_regs_rid[i],
		    RF_ACTIVE)) == NULL) {
			FUNC13(dev, "Cannot allocate resources\n");
			goto fail;
		}
	}

	sc->vmd_io_rid = PCIR_IOBASEL_1;
	sc->vmd_io_resource = FUNC5(
	    FUNC11(sc->vmd_dev), SYS_RES_IOPORT, &sc->vmd_io_rid,
	    RF_ACTIVE);
	if (sc->vmd_io_resource == NULL) {
		FUNC13(dev, "Cannot allocate IO\n");
		goto fail;
	}


	sc->vmd_btag = FUNC24(sc->vmd_regs_resource[0]);
	sc->vmd_bhandle = FUNC23(sc->vmd_regs_resource[0]);

	FUNC21(dev, PCIR_PRIBUS_2,
	    FUNC22(FUNC11(dev)), 1);

	sec_reg = PCIR_SECBUS_1;
	bus = &sc->vmd_bus;
	bus->sub_reg = PCIR_SUBBUS_1;
	bus->sec = FUNC35(dev, b, s, f, sec_reg, 1);
	bus->sub = FUNC35(dev, b, s, f, bus->sub_reg, 1);
	bus->dev = dev;
	bus->rman.rm_start = 0;
	bus->rman.rm_end = PCI_BUSMAX;
	bus->rman.rm_type = RMAN_ARRAY;
	FUNC30(buf, sizeof(buf), "%s bus numbers", FUNC10(dev));
	bus->rman.rm_descr = FUNC31(buf, M_DEVBUF);
	error = FUNC28(&bus->rman);

	if (error) {
		FUNC13(dev, "Failed to initialize %s bus number rman\n",
		    FUNC10(dev));
		goto fail;
	}

	/*
	 * Allocate a bus range.  This will return an existing bus range
	 * if one exists, or a new bus range if one does not.
	 */
	rid = 0;
	bus->res = FUNC6(dev, PCI_RES_BUS, &rid,
	    min_count, 0);
	if (bus->res == NULL) {
		/*
		 * Fall back to just allocating a range of a single bus
		 * number.
		 */
		bus->res = FUNC6(dev, PCI_RES_BUS, &rid,
		    1, 0);
	} else if (FUNC26(bus->res) < min_count) {
		/*
		 * Attempt to grow the existing range to satisfy the
		 * minimum desired count.
		 */
		(void)FUNC4(dev, PCI_RES_BUS, bus->res,
		    FUNC27(bus->res), FUNC27(bus->res) +
		    min_count - 1);
	}


	/*
	 * Add the initial resource to the rman.
	 */
	if (bus->res != NULL) {
		error = FUNC29(&bus->rman, FUNC27(bus->res),
		    FUNC25(bus->res));
		if (error) {
			FUNC13(dev, "Failed to add resource to rman\n");
			goto fail;
		}
		bus->sec = FUNC27(bus->res);
		bus->sub = FUNC25(bus->res);
	}

	sc->vmd_msix_count = FUNC19(dev);
	if (FUNC17(dev, &sc->vmd_msix_count) == 0) {
		sc->vmd_irq = FUNC15(sizeof(struct vmd_irq) *
		    sc->vmd_msix_count,
		    M_DEVBUF, M_WAITOK | M_ZERO);

		for (i = 0; i < sc->vmd_msix_count; i++) {
			sc->vmd_irq[i].vmd_rid = i + 1;
			sc->vmd_irq[i].vmd_sc = sc;
			sc->vmd_irq[i].vmd_instance = i;
			sc->vmd_irq[i].vmd_res = FUNC5(dev,
			    SYS_RES_IRQ, &sc->vmd_irq[i].vmd_rid,
			    RF_ACTIVE);
			if (sc->vmd_irq[i].vmd_res == NULL) {
				FUNC13(dev,"Failed to alloc irq\n");
				goto fail;
			}

			FUNC2(&sc->vmd_irq[i].vmd_list);
			if (FUNC7(dev, sc->vmd_irq[i].vmd_res,
			    INTR_TYPE_MISC | INTR_MPSAFE, NULL, vmd_intr,
			    &sc->vmd_irq[i], &sc->vmd_irq[i].vmd_handle)) {
				FUNC13(sc->vmd_dev,
				    "Cannot set up interrupt\n");
				sc->vmd_irq[i].vmd_res = NULL;
				goto fail;
			}
		}
	}

	sc->vmd_child = FUNC9(dev, NULL, -1);

	if (sc->vmd_child == NULL) {
		FUNC13(dev, "Failed to attach child\n");
		goto fail;
	}

	error = FUNC14(sc->vmd_child);
	if (error) {
		FUNC13(dev, "Failed to add probe child\n");
		goto fail;
	}


	return (0);

fail:
	FUNC34(sc);
	return (ENXIO);
}