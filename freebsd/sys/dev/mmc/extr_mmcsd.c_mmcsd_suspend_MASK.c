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
struct mmcsd_softc {struct mmcsd_part** part; } ;
struct mmcsd_part {int suspend; scalar_t__ running; int ioctl; int /*<<< orphan*/  ioctl_mtx; int /*<<< orphan*/  disk_mtx; int /*<<< orphan*/ * disk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmcsd_part*) ; 
 scalar_t__ MMC_ERR_NONE ; 
 int MMC_PART_MAX ; 
 struct mmcsd_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct mmcsd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmcsd_part*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mmcsd_part*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct mmcsd_softc *sc = FUNC4(dev);
	struct mmcsd_part *part;
	int i;

	for (i = 0; i < MMC_PART_MAX; i++) {
		part = sc->part[i];
		if (part != NULL) {
			if (part->disk != NULL) {
				FUNC0(part);
				part->suspend = 1;
				if (part->running > 0) {
					/* kill thread */
					part->running = 0;
					FUNC8(part);
					/* wait for thread to finish. */
					while (part->running != -1)
						FUNC7(part, &part->disk_mtx, 0,
						    "mmcsd disk suspension", 0);
				}
				FUNC1(part);
			}
			FUNC2(part);
			while (part->ioctl > 0)
				FUNC7(part, &part->ioctl_mtx, 0,
				    "mmcsd IOCTL suspension", 0);
			part->ioctl = -1;
			FUNC3(part);
		}
	}
	if (FUNC6(sc) != MMC_ERR_NONE)
		FUNC5(dev, "failed to flush cache\n");
	return (0);
}