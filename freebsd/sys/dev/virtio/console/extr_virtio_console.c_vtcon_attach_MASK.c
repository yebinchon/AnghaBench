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
struct vtcon_softc {int vtcon_flags; int /*<<< orphan*/  vtcon_ctrl_task; int /*<<< orphan*/  vtcon_ctrl_tx_mtx; int /*<<< orphan*/  vtcon_mtx; int /*<<< orphan*/  vtcon_dev; } ;
struct virtio_console_config {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_TYPE_TTY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtcon_softc*) ; 
 int /*<<< orphan*/  VIRTIO_CONSOLE_BAD_ID ; 
 int /*<<< orphan*/  VIRTIO_CONSOLE_DEVICE_READY ; 
 int VTCON_FLAG_MULTIPORT ; 
 int VTCON_FLAG_SIZE ; 
 struct vtcon_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vtcon_softc*) ; 
 int FUNC7 (struct vtcon_softc*) ; 
 int FUNC8 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vtcon_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vtcon_ctrl_task_cb ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vtcon_softc*,struct virtio_console_config*) ; 
 int /*<<< orphan*/  FUNC12 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  vtcon_feature_desc ; 
 int FUNC13 (struct vtcon_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct vtcon_softc*,struct virtio_console_config*) ; 
 int /*<<< orphan*/  FUNC16 (struct vtcon_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct vtcon_softc *sc;
	struct virtio_console_config concfg;
	int error;

	sc = FUNC1(dev);
	sc->vtcon_dev = dev;

	FUNC3(&sc->vtcon_mtx, "vtconmtx", NULL, MTX_DEF);
	FUNC3(&sc->vtcon_ctrl_tx_mtx, "vtconctrlmtx", NULL, MTX_DEF);

	FUNC4(dev, vtcon_feature_desc);
	FUNC16(sc);

	FUNC15(sc, &concfg);
	FUNC11(sc, &concfg);

	error = FUNC6(sc);
	if (error) {
		FUNC2(dev, "cannot allocate softc port structures\n");
		goto fail;
	}

	error = FUNC7(sc);
	if (error) {
		FUNC2(dev, "cannot allocate virtqueues\n");
		goto fail;
	}

	if (sc->vtcon_flags & VTCON_FLAG_MULTIPORT) {
		FUNC0(&sc->vtcon_ctrl_task, 0, vtcon_ctrl_task_cb, sc);
		error = FUNC8(sc);
		if (error)
			goto fail;
	} else {
		error = FUNC13(sc, 0);
		if (error)
			goto fail;
		if (sc->vtcon_flags & VTCON_FLAG_SIZE)
			FUNC14(sc);
	}

	error = FUNC5(dev, INTR_TYPE_TTY);
	if (error) {
		FUNC2(dev, "cannot setup virtqueue interrupts\n");
		goto fail;
	}

	FUNC12(sc);

	FUNC9(sc, VIRTIO_CONSOLE_BAD_ID,
	    VIRTIO_CONSOLE_DEVICE_READY, 1);

fail:
	if (error)
		FUNC10(dev);

	return (error);
}