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
struct mmcsd_softc {int flags; int /*<<< orphan*/  rca; int /*<<< orphan*/  mmcbus; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_CSD_CMD_SET_NORMAL ; 
 int /*<<< orphan*/  EXT_CSD_FLUSH_CACHE ; 
 int /*<<< orphan*/  EXT_CSD_FLUSH_CACHE_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MMCSD_DIRTY ; 
 int MMCSD_FLUSH_CACHE ; 
 int MMC_ERR_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(struct mmcsd_softc *sc)
{
	device_t dev, mmcbus;
	int err;

	if ((sc->flags & MMCSD_FLUSH_CACHE) == 0)
		return (MMC_ERR_NONE);

	dev = sc->dev;
	mmcbus = sc->mmcbus;
	FUNC0(mmcbus, dev);
	if ((sc->flags & MMCSD_DIRTY) == 0) {
		FUNC1(mmcbus, dev);
		return (MMC_ERR_NONE);
	}
	err = FUNC2(mmcbus, dev, sc->rca, EXT_CSD_CMD_SET_NORMAL,
	    EXT_CSD_FLUSH_CACHE, EXT_CSD_FLUSH_CACHE_FLUSH, 60 * 1000, true);
	if (err == MMC_ERR_NONE)
		sc->flags &= ~MMCSD_DIRTY;
	FUNC1(mmcbus, dev);
	return (err);
}