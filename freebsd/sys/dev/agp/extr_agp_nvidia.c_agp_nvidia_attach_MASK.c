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
typedef  int u_int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  as_aperture; } ;
struct agp_nvidia_softc {int wbc_mask; int initial_aperture; int num_dirs; int num_active_entries; int pg_offset; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * mc2_dev; struct agp_gatt* gatt; int /*<<< orphan*/ * bdev; TYPE_1__ agp; int /*<<< orphan*/ * mc1_dev; } ;
struct agp_gatt {int ag_physical; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AGP_NVIDIA_0_APSIZE ; 
 int /*<<< orphan*/  AGP_NVIDIA_2_APBASE ; 
 int /*<<< orphan*/  AGP_NVIDIA_2_APLIMIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AGP_NVIDIA_2_GARTCTRL ; 
 int /*<<< orphan*/  AGP_NVIDIA_3_APBASE ; 
 int /*<<< orphan*/  AGP_NVIDIA_3_APLIMIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
#define  NVIDIA_DEVICEID_NFORCE 129 
#define  NVIDIA_DEVICEID_NFORCE2 128 
 int PAGE_SIZE ; 
 struct agp_gatt* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct agp_nvidia_softc* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int) ; 

__attribute__((used)) static int
FUNC16 (device_t dev)
{
	struct agp_nvidia_softc *sc = FUNC6(dev);
	struct agp_gatt *gatt;
	u_int32_t apbase;
	u_int32_t aplimit;
	u_int32_t temp;
	int size;
	int i;
	int error;

	switch (FUNC11(dev)) {
	case NVIDIA_DEVICEID_NFORCE:
		sc->wbc_mask = 0x00010000;
		break;
	case NVIDIA_DEVICEID_NFORCE2:
		sc->wbc_mask = 0x80000000;
		break;
	default:
		FUNC7(dev, "Bad chip id\n");
		return (ENODEV);
	}

	/* AGP Controller */
	sc->dev = dev;

	/* Memory Controller 1 */
	sc->mc1_dev = FUNC9(FUNC10(dev), 0, 1);
	if (sc->mc1_dev == NULL) {
		FUNC7(dev,
			"Unable to find NVIDIA Memory Controller 1.\n");
		return (ENODEV);
	}

	/* Memory Controller 2 */
	sc->mc2_dev = FUNC9(FUNC10(dev), 0, 2);
	if (sc->mc2_dev == NULL) {
		FUNC7(dev,
			"Unable to find NVIDIA Memory Controller 2.\n");
		return (ENODEV);
	}

	/* AGP Host to PCI Bridge */
	sc->bdev = FUNC9(FUNC10(dev), 30, 0);
	if (sc->bdev == NULL) {
		FUNC7(dev,
			"Unable to find NVIDIA AGP Host to PCI Bridge.\n");
		return (ENODEV);
	}

	error = FUNC4(dev);
	if (error)
		return (error);

	sc->initial_aperture = FUNC0(dev);

	for (;;) {
		gatt = FUNC3(dev);
		if (gatt)
			break;
		/*
		 * Probably contigmalloc failure. Try reducing the
		 * aperture so that the gatt size reduces.
		 */
		if (FUNC2(dev, FUNC0(dev) / 2))
			goto fail;
	}
	sc->gatt = gatt;

	apbase = FUNC14(sc->agp.as_aperture);
	aplimit = apbase + FUNC0(dev) - 1;
	FUNC13(sc->mc2_dev, AGP_NVIDIA_2_APBASE, apbase, 4);
	FUNC13(sc->mc2_dev, AGP_NVIDIA_2_APLIMIT, aplimit, 4);
	FUNC13(sc->bdev, AGP_NVIDIA_3_APBASE, apbase, 4);
	FUNC13(sc->bdev, AGP_NVIDIA_3_APLIMIT, aplimit, 4);

	error = FUNC8(apbase, FUNC0(dev));
	if (error) {
		FUNC7(dev, "Failed to setup IORRs\n");
		goto fail;
	}

	/* directory size is 64k */
	size = FUNC0(dev) / 1024 / 1024;
	sc->num_dirs = size / 64;
	sc->num_active_entries = (size == 32) ? 16384 : ((size * 1024) / 4);
	sc->pg_offset = 0;
	if (sc->num_dirs == 0) {
		sc->num_dirs = 1;
		sc->num_active_entries /= (64 / size);
		sc->pg_offset = FUNC15(apbase & (64 * 1024 * 1024 - 1),
		    FUNC0(dev)) / PAGE_SIZE;
	}

	/* (G)ATT Base Address */
	for (i = 0; i < 8; i++) {
		FUNC13(sc->mc2_dev, FUNC1(i),
				 (sc->gatt->ag_physical +
				   (i % sc->num_dirs) * 64 * 1024) | 1, 4);
	}

	/* GTLB Control */
	temp = FUNC12(sc->mc2_dev, AGP_NVIDIA_2_GARTCTRL, 4);
	FUNC13(sc->mc2_dev, AGP_NVIDIA_2_GARTCTRL, temp | 0x11, 4);

	/* GART Control */
	temp = FUNC12(sc->dev, AGP_NVIDIA_0_APSIZE, 4);
	FUNC13(sc->dev, AGP_NVIDIA_0_APSIZE, temp | 0x100, 4);

	return (0);
fail:
	FUNC5(dev);
	return (ENOMEM);
}