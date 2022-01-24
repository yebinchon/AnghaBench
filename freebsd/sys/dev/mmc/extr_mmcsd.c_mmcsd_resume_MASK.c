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
struct mmcsd_part {scalar_t__ running; scalar_t__ ioctl; int /*<<< orphan*/  cnt; int /*<<< orphan*/  name; int /*<<< orphan*/  p; scalar_t__ suspend; int /*<<< orphan*/ * disk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmcsd_part*) ; 
 int MMC_PART_MAX ; 
 struct mmcsd_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mmcsd_part*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmcsd_task ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct mmcsd_softc *sc = FUNC4(dev);
	struct mmcsd_part *part;
	int i;

	for (i = 0; i < MMC_PART_MAX; i++) {
		part = sc->part[i];
		if (part != NULL) {
			if (part->disk != NULL) {
				FUNC0(part);
				part->suspend = 0;
				if (part->running <= 0) {
					part->running = 1;
					FUNC1(part);
					FUNC5(&mmcsd_task, part,
					    &part->p, 0, 0, "%s%d: mmc/sd card",
					    part->name, part->cnt);
				} else
					FUNC1(part);
			}
			FUNC2(part);
			part->ioctl = 0;
			FUNC3(part);
		}
	}
	return (0);
}