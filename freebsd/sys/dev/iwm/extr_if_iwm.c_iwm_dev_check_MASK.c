#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct iwm_softc {int /*<<< orphan*/  cfg; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ device; int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int ENXIO ; 
 struct iwm_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* iwm_devices ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct iwm_softc *sc;
	uint16_t devid;
	int i;

	sc = FUNC0(dev);

	devid = FUNC3(dev);
	for (i = 0; i < FUNC2(iwm_devices); i++) {
		if (iwm_devices[i].device == devid) {
			sc->cfg = iwm_devices[i].cfg;
			return (0);
		}
	}
	FUNC1(dev, "unknown adapter type\n");
	return ENXIO;
}