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
typedef  int /*<<< orphan*/  uint32_t ;
struct vtballoon_softc {int /*<<< orphan*/  vtballoon_deflate_vq; int /*<<< orphan*/  vtballoon_inflate_vq; int /*<<< orphan*/  vtballoon_td; int /*<<< orphan*/ * vtballoon_page_frames; int /*<<< orphan*/  vtballoon_pages; int /*<<< orphan*/  vtballoon_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vtballoon_softc*,int /*<<< orphan*/ ) ; 
 int VTBALLOON_PAGES_PER_REQUEST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vtballoon_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct vtballoon_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vtballoon_softc*) ; 
 int FUNC11 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtballoon_feature_desc ; 
 int /*<<< orphan*/  FUNC13 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  vtballoon_thread ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct vtballoon_softc *sc;
	int error;

	sc = FUNC3(dev);
	sc->vtballoon_dev = dev;

	FUNC1(sc, FUNC2(dev));
	FUNC0(&sc->vtballoon_pages);

	FUNC10(sc);

	FUNC7(dev, vtballoon_feature_desc);
	FUNC13(sc);

	sc->vtballoon_page_frames = FUNC6(VTBALLOON_PAGES_PER_REQUEST *
	    sizeof(uint32_t), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (sc->vtballoon_page_frames == NULL) {
		error = ENOMEM;
		FUNC4(dev,
		    "cannot allocate page frame request array\n");
		goto fail;
	}

	error = FUNC11(sc);
	if (error) {
		FUNC4(dev, "cannot allocate virtqueues\n");
		goto fail;
	}

	error = FUNC8(dev, INTR_TYPE_MISC);
	if (error) {
		FUNC4(dev, "cannot setup virtqueue interrupts\n");
		goto fail;
	}

	error = FUNC5(vtballoon_thread, sc, NULL, &sc->vtballoon_td,
	    0, 0, "virtio_balloon");
	if (error) {
		FUNC4(dev, "cannot create balloon kthread\n");
		goto fail;
	}

	FUNC9(sc->vtballoon_inflate_vq);
	FUNC9(sc->vtballoon_deflate_vq);

fail:
	if (error)
		FUNC12(dev);

	return (error);
}