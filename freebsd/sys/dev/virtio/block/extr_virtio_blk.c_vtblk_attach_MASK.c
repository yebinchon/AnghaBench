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
struct vtblk_softc {scalar_t__ vtblk_max_nsegs; int /*<<< orphan*/  vtblk_vq; int /*<<< orphan*/ * vtblk_sglist; int /*<<< orphan*/  vtblk_req_ready; int /*<<< orphan*/  vtblk_req_free; int /*<<< orphan*/  vtblk_dump_queue; int /*<<< orphan*/  vtblk_bioq; int /*<<< orphan*/  vtblk_dev; } ;
struct virtio_blk_config {scalar_t__ size_max; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUP ; 
 int INTR_ENTROPY ; 
 int INTR_TYPE_BIO ; 
 scalar_t__ MAXPHYS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIRTIO_BLK_F_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ VTBLK_MIN_SEGMENTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct vtblk_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vtblk_softc*,struct virtio_blk_config*) ; 
 int FUNC12 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtblk_feature_desc ; 
 scalar_t__ FUNC15 (struct vtblk_softc*,struct virtio_blk_config*) ; 
 int /*<<< orphan*/  FUNC16 (struct vtblk_softc*,struct virtio_blk_config*) ; 
 int FUNC17 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct vtblk_softc*) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	struct vtblk_softc *sc;
	struct virtio_blk_config blkcfg;
	int error;

	FUNC7(dev, vtblk_feature_desc);

	sc = FUNC4(dev);
	sc->vtblk_dev = dev;
	FUNC1(sc, FUNC3(dev));
	FUNC2(&sc->vtblk_bioq);
	FUNC0(&sc->vtblk_dump_queue);
	FUNC0(&sc->vtblk_req_free);
	FUNC0(&sc->vtblk_req_ready);

	FUNC19(sc);
	FUNC18(sc);

	FUNC16(sc, &blkcfg);

	/*
	 * With the current sglist(9) implementation, it is not easy
	 * for us to support a maximum segment size as adjacent
	 * segments are coalesced. For now, just make sure it's larger
	 * than the maximum supported transfer size.
	 */
	if (FUNC9(dev, VIRTIO_BLK_F_SIZE_MAX)) {
		if (blkcfg.size_max < MAXPHYS) {
			error = ENOTSUP;
			FUNC5(dev, "host requires unsupported "
			    "maximum segment size feature\n");
			goto fail;
		}
	}

	sc->vtblk_max_nsegs = FUNC15(sc, &blkcfg);
	if (sc->vtblk_max_nsegs <= VTBLK_MIN_SEGMENTS) {
		error = EINVAL;
		FUNC5(dev, "fewer than minimum number of segments "
		    "allowed: %d\n", sc->vtblk_max_nsegs);
		goto fail;
	}

	sc->vtblk_sglist = FUNC6(sc->vtblk_max_nsegs, M_NOWAIT);
	if (sc->vtblk_sglist == NULL) {
		error = ENOMEM;
		FUNC5(dev, "cannot allocate sglist\n");
		goto fail;
	}

	error = FUNC12(sc);
	if (error) {
		FUNC5(dev, "cannot allocate virtqueue\n");
		goto fail;
	}

	error = FUNC17(sc);
	if (error) {
		FUNC5(dev, "cannot preallocate requests\n");
		goto fail;
	}

	FUNC11(sc, &blkcfg);

	error = FUNC8(dev, INTR_TYPE_BIO | INTR_ENTROPY);
	if (error) {
		FUNC5(dev, "cannot setup virtqueue interrupt\n");
		goto fail;
	}

	FUNC13(sc);

	FUNC10(sc->vtblk_vq);

fail:
	if (error)
		FUNC14(dev);

	return (error);
}