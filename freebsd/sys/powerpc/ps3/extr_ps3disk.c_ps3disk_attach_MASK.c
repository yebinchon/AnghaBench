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
typedef  int /*<<< orphan*/  uint64_t ;
struct ps3disk_softc {int sc_blksize; int sc_nregs; int sc_running; struct ps3disk_region* sc_reg; int /*<<< orphan*/  sc_irq; scalar_t__ sc_irqid; int /*<<< orphan*/  sc_irqctx; int /*<<< orphan*/  sc_task; int /*<<< orphan*/  sc_deferredq; int /*<<< orphan*/  sc_bioq; struct disk** sc_disk; int /*<<< orphan*/  sc_dmatag; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_nblocks; int /*<<< orphan*/  sc_dev; } ;
struct ps3disk_region {int r_size; int /*<<< orphan*/  r_flags; } ;
struct disk {char* d_name; int d_sectorsize; int d_unit; int d_mediasize; int /*<<< orphan*/  d_flags; int /*<<< orphan*/  d_maxsize; struct ps3disk_softc* d_drv1; int /*<<< orphan*/  d_strategy; int /*<<< orphan*/  d_close; int /*<<< orphan*/  d_open; } ;
typedef  int intmax_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  DISKFLAG_CANFLUSHCACHE ; 
 int /*<<< orphan*/  DISK_VERSION ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int LV1_DENIED_BY_POLICY ; 
 int /*<<< orphan*/  M_PS3DISK ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ps3disk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ps3disk_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ps3disk_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 struct ps3disk_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 struct disk* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ps3disk_region*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct ps3disk_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct disk** FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps3disk_close ; 
 int FUNC18 (struct ps3disk_softc*) ; 
 int FUNC19 (struct ps3disk_softc*) ; 
 int /*<<< orphan*/  ps3disk_intr ; 
 int /*<<< orphan*/  ps3disk_open ; 
 int /*<<< orphan*/  ps3disk_strategy ; 
 int /*<<< orphan*/  FUNC20 (struct ps3disk_softc*) ; 
 int /*<<< orphan*/  ps3disk_task ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct ps3disk_softc *sc;
	struct disk *d;
	intmax_t mb;
	uint64_t junk;
	char unit;
	int i, err;

	sc = FUNC9(dev);
	sc->sc_dev = dev;

	FUNC1(sc);

	err = FUNC19(sc);
	if (err) {
		FUNC10(dev, "Could not get disk geometry\n");
		err = ENXIO;
		goto fail_destroy_lock;
	}

	FUNC10(dev, "block size %lu total blocks %lu\n",
	    sc->sc_blksize, sc->sc_nblocks);

	err = FUNC18(sc);
	if (err) {
		FUNC10(dev, "Could not enumerate disk regions\n");
		err = ENXIO;
		goto fail_destroy_lock;
	}

	FUNC10(dev, "Found %lu regions\n", sc->sc_nregs);

	if (!sc->sc_nregs) {
		err = ENXIO;
		goto fail_destroy_lock;
	}

	/* Setup interrupt handler */
	sc->sc_irqid = 0;
	sc->sc_irq = FUNC3(dev, SYS_RES_IRQ, &sc->sc_irqid,
	    RF_ACTIVE);
	if (!sc->sc_irq) {
		FUNC10(dev, "Could not allocate IRQ\n");
		err = ENXIO;
		goto fail_free_regions;
	}

	err = FUNC7(dev, sc->sc_irq,
	    INTR_TYPE_BIO | INTR_MPSAFE | INTR_ENTROPY,
	    NULL, ps3disk_intr, sc, &sc->sc_irqctx);
	if (err) {
		FUNC10(dev, "Could not setup IRQ\n");
		err = ENXIO;
		goto fail_release_intr;
	}

	/* Setup DMA */
	err = FUNC4(FUNC5(dev), 4096, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
	    BUS_SPACE_UNRESTRICTED, 1, PAGE_SIZE, 0,
	    busdma_lock_mutex, &sc->sc_mtx, &sc->sc_dmatag);
	if (err) {
		FUNC10(dev, "Could not create DMA tag\n");
		err = ENXIO;
		goto fail_teardown_intr;
	}

	/* Setup disks */

	sc->sc_disk = FUNC16(sc->sc_nregs * sizeof(struct disk *),
	    M_PS3DISK, M_ZERO | M_WAITOK);
	if (!sc->sc_disk) {
		FUNC10(dev, "Could not allocate disk(s)\n");
		err = ENOMEM;
		goto fail_teardown_intr;
	}

	for (i = 0; i < sc->sc_nregs; i++) {
		struct ps3disk_region *rp = &sc->sc_reg[i];

		d = sc->sc_disk[i] = FUNC11();
		d->d_open = ps3disk_open;
		d->d_close = ps3disk_close;
		d->d_strategy = ps3disk_strategy;
		d->d_name = "ps3disk";
		d->d_drv1 = sc;
		d->d_maxsize = PAGE_SIZE;
		d->d_sectorsize = sc->sc_blksize;
		d->d_unit = i;
		d->d_mediasize = sc->sc_reg[i].r_size * sc->sc_blksize;
		d->d_flags |= DISKFLAG_CANFLUSHCACHE;

		mb = d->d_mediasize >> 20;
		unit = 'M';
		if (mb >= 10240) {
			unit = 'G';
			mb /= 1024;
		}

		/* Test to see if we can read this region */
		err = FUNC15(FUNC17(dev), d->d_unit,
		    0, 0, rp->r_flags, 0, &junk);
		FUNC10(dev, "region %d %ju%cB%s\n", i, mb, unit,
		    (err == LV1_DENIED_BY_POLICY) ?  " (hypervisor protected)"
		    : "");

		if (err != LV1_DENIED_BY_POLICY)
			FUNC12(d, DISK_VERSION);
	}
	err = 0;

	FUNC2(&sc->sc_bioq);
	FUNC2(&sc->sc_deferredq);
	FUNC14(&ps3disk_task, sc, &sc->sc_task, 0, 0, "ps3disk");

	FUNC20(sc);
	sc->sc_running = 1;
	return (0);

fail_teardown_intr:
	FUNC8(dev, sc->sc_irq, sc->sc_irqctx);
fail_release_intr:
	FUNC6(dev, SYS_RES_IRQ, sc->sc_irqid, sc->sc_irq);
fail_free_regions:
	FUNC13(sc->sc_reg, M_PS3DISK);
fail_destroy_lock:
	FUNC0(sc);
	return (err);
}