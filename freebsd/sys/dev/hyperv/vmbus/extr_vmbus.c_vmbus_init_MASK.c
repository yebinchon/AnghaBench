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
struct vmbus_softc {void* vmbus_version; int /*<<< orphan*/  vmbus_dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void**) ; 
 int FUNC4 (struct vmbus_softc*,void*) ; 
 void* vmbus_current_version ; 
 void** vmbus_version ; 

__attribute__((used)) static int
FUNC5(struct vmbus_softc *sc)
{
	int i;

	for (i = 0; i < FUNC3(vmbus_version); ++i) {
		int error;

		error = FUNC4(sc, vmbus_version[i]);
		if (!error) {
			vmbus_current_version = vmbus_version[i];
			sc->vmbus_version = vmbus_version[i];
			FUNC2(sc->vmbus_dev, "version %u.%u\n",
			    FUNC0(sc->vmbus_version),
			    FUNC1(sc->vmbus_version));
			return 0;
		}
	}
	return ENXIO;
}