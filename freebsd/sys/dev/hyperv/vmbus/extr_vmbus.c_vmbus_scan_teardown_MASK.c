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
struct vmbus_softc {int /*<<< orphan*/ * vmbus_subchtq; int /*<<< orphan*/ * vmbus_devtq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIANT_REQUIRED ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct vmbus_softc *sc)
{

	GIANT_REQUIRED;
	if (sc->vmbus_devtq != NULL) {
		FUNC1(&Giant);
		FUNC2(sc->vmbus_devtq);
		FUNC0(&Giant);
		sc->vmbus_devtq = NULL;
	}
	if (sc->vmbus_subchtq != NULL) {
		FUNC1(&Giant);
		FUNC2(sc->vmbus_subchtq);
		FUNC0(&Giant);
		sc->vmbus_subchtq = NULL;
	}
}