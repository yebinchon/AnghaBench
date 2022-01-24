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
struct mmcsd_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ MMC_ERR_NONE ; 
 struct mmcsd_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct mmcsd_softc*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct mmcsd_softc *sc = FUNC0(dev);

	if (FUNC2(sc) != MMC_ERR_NONE)
		FUNC1(dev, "failed to flush cache\n");
	return (0);
}