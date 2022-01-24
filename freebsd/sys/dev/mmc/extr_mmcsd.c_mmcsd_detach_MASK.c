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
struct mmcsd_softc {struct mmcsd_part** part; int /*<<< orphan*/ * rpmb_dev; } ;
struct mmcsd_part {scalar_t__ running; int ioctl; int /*<<< orphan*/ * disk; int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  ioctl_mtx; int /*<<< orphan*/  disk_mtx; scalar_t__ suspend; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmcsd_part*) ; 
 scalar_t__ MMC_ERR_NONE ; 
 int MMC_PART_MAX ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct mmcsd_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mmcsd_part*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct mmcsd_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct mmcsd_part*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mmcsd_part*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct mmcsd_softc *sc = FUNC8(dev);
	struct mmcsd_part *part;
	int i;

	for (i = 0; i < MMC_PART_MAX; i++) {
		part = sc->part[i];
		if (part != NULL) {
			if (part->disk != NULL) {
				FUNC0(part);
				part->suspend = 0;
				if (part->running > 0) {
					/* kill thread */
					part->running = 0;
					FUNC14(part);
					/* wait for thread to finish. */
					while (part->running != -1)
						FUNC13(part, &part->disk_mtx, 0,
						    "mmcsd disk detach", 0);
				}
				FUNC2(part);
			}
			FUNC3(part);
			while (part->ioctl > 0)
				FUNC13(part, &part->ioctl_mtx, 0,
				    "mmcsd IOCTL detach", 0);
			part->ioctl = -1;
			FUNC5(part);
		}
	}

	if (sc->rpmb_dev != NULL)
		FUNC7(sc->rpmb_dev);

	for (i = 0; i < MMC_PART_MAX; i++) {
		part = sc->part[i];
		if (part != NULL) {
			if (part->disk != NULL) {
				/* Flush the request queue. */
				FUNC6(&part->bio_queue, NULL, ENXIO);
				/* kill disk */
				FUNC10(part->disk);

				FUNC1(part);
			}
			FUNC4(part);
			FUNC11(part, M_DEVBUF);
		}
	}
	if (FUNC12(sc) != MMC_ERR_NONE)
		FUNC9(dev, "failed to flush cache\n");
	return (0);
}