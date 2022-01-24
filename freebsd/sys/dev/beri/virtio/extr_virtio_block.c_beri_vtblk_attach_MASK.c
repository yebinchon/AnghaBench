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
struct virtio_blk_config {int dummy; } ;
struct beri_vtblk_softc {TYPE_1__* cdev; int /*<<< orphan*/  pio_recv; int /*<<< orphan*/  pio_send; int /*<<< orphan*/  beri_mem_offset; int /*<<< orphan*/  vtblk_ktd; int /*<<< orphan*/  dev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  cfg; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct beri_vtblk_softc* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  beri_cdevsw ; 
 int /*<<< orphan*/  beri_spec ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct beri_vtblk_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct beri_vtblk_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtblk_thread ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct beri_vtblk_softc *sc;
	int error;

	sc = FUNC2(dev);
	sc->dev = dev;

	if (FUNC0(dev, beri_spec, sc->res)) {
		FUNC3(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);

	sc->cfg = FUNC6(sizeof(struct virtio_blk_config),
		M_DEVBUF, M_NOWAIT|M_ZERO);

	FUNC11(&sc->sc_mtx, FUNC1(sc->dev));

	error = FUNC4(vtblk_thread, sc, NULL, &sc->vtblk_ktd,
		0, 0, "beri_virtio_block");
	if (error) {
		FUNC3(dev, "cannot create kthread\n");
		return (ENXIO);
	}

	if (FUNC9(dev, &sc->beri_mem_offset) != 0)
		return (ENXIO);
	if (FUNC10(dev, "pio-send", &sc->pio_send) != 0)
		return (ENXIO);
	if (FUNC10(dev, "pio-recv", &sc->pio_recv) != 0)
		return (ENXIO);

	sc->cdev = FUNC5(&beri_cdevsw, 0, UID_ROOT, GID_WHEEL,
	    S_IRWXU, "beri_vtblk");
	if (sc->cdev == NULL) {
		FUNC3(dev, "Failed to create character device.\n");
		return (ENXIO);
	}

	sc->cdev->si_drv1 = sc;
	return (0);
}