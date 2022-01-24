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
struct vtscsi_softc {int /*<<< orphan*/ * vtscsi_sglist; int /*<<< orphan*/  vtscsi_max_nsegs; int /*<<< orphan*/  vtscsi_event_buf_size; int /*<<< orphan*/  vtscsi_max_lun; int /*<<< orphan*/  vtscsi_max_target; int /*<<< orphan*/  vtscsi_max_channel; int /*<<< orphan*/  vtscsi_flags; int /*<<< orphan*/  vtscsi_req_free; int /*<<< orphan*/  vtscsi_dev; } ;
struct virtio_scsi_config {int /*<<< orphan*/  seg_max; int /*<<< orphan*/  event_info_size; int /*<<< orphan*/  max_lun; int /*<<< orphan*/  max_target; int /*<<< orphan*/  max_channel; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INTR_TYPE_CAM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIRTIO_RING_F_INDIRECT_DESC ; 
 int /*<<< orphan*/  VIRTIO_SCSI_F_HOTPLUG ; 
 int /*<<< orphan*/  VIRTIO_SCSI_F_INOUT ; 
 int /*<<< orphan*/  VTSCSI_FLAG_BIDIRECTIONAL ; 
 int /*<<< orphan*/  VTSCSI_FLAG_HOTPLUG ; 
 int /*<<< orphan*/  VTSCSI_FLAG_INDIRECT ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vtscsi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vtscsi_softc*) ; 
 int FUNC10 (struct vtscsi_softc*) ; 
 int FUNC11 (struct vtscsi_softc*) ; 
 int FUNC12 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  vtscsi_feature_desc ; 
 int /*<<< orphan*/  FUNC16 (struct vtscsi_softc*) ; 
 int FUNC17 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct vtscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct vtscsi_softc*,struct virtio_scsi_config*) ; 
 int FUNC21 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct vtscsi_softc*) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct vtscsi_softc *sc;
	struct virtio_scsi_config scsicfg;
	int error;

	sc = FUNC3(dev);
	sc->vtscsi_dev = dev;

	FUNC1(sc, FUNC2(dev));
	FUNC0(&sc->vtscsi_req_free);

	FUNC16(sc);
	FUNC9(sc);

	FUNC6(dev, vtscsi_feature_desc);
	FUNC19(sc);

	if (FUNC8(dev, VIRTIO_RING_F_INDIRECT_DESC))
		sc->vtscsi_flags |= VTSCSI_FLAG_INDIRECT;
	if (FUNC8(dev, VIRTIO_SCSI_F_INOUT))
		sc->vtscsi_flags |= VTSCSI_FLAG_BIDIRECTIONAL;
	if (FUNC8(dev, VIRTIO_SCSI_F_HOTPLUG))
		sc->vtscsi_flags |= VTSCSI_FLAG_HOTPLUG;

	FUNC20(sc, &scsicfg);

	sc->vtscsi_max_channel = scsicfg.max_channel;
	sc->vtscsi_max_target = scsicfg.max_target;
	sc->vtscsi_max_lun = scsicfg.max_lun;
	sc->vtscsi_event_buf_size = scsicfg.event_info_size;

	FUNC22(sc);

	sc->vtscsi_max_nsegs = FUNC18(sc, scsicfg.seg_max);
	sc->vtscsi_sglist = FUNC5(sc->vtscsi_max_nsegs, M_NOWAIT);
	if (sc->vtscsi_sglist == NULL) {
		error = ENOMEM;
		FUNC4(dev, "cannot allocate sglist\n");
		goto fail;
	}

	error = FUNC12(sc);
	if (error) {
		FUNC4(dev, "cannot allocate virtqueues\n");
		goto fail;
	}

	FUNC13(sc);

	error = FUNC17(sc);
	if (error) {
		FUNC4(dev, "cannot populate the eventvq\n");
		goto fail;
	}

	error = FUNC11(sc);
	if (error) {
		FUNC4(dev, "cannot allocate requests\n");
		goto fail;
	}

	error = FUNC10(sc);
	if (error) {
		FUNC4(dev, "cannot allocate CAM structures\n");
		goto fail;
	}

	error = FUNC7(dev, INTR_TYPE_CAM);
	if (error) {
		FUNC4(dev, "cannot setup virtqueue interrupts\n");
		goto fail;
	}

	FUNC15(sc);

	/*
	 * Register with CAM after interrupts are enabled so we will get
	 * notified of the probe responses.
	 */
	error = FUNC21(sc);
	if (error) {
		FUNC4(dev, "cannot register with CAM\n");
		goto fail;
	}

fail:
	if (error)
		FUNC14(dev);

	return (error);
}