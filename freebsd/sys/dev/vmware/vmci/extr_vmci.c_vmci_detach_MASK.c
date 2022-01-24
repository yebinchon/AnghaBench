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
struct TYPE_2__ {int /*<<< orphan*/ * dma_vaddr; } ;
struct vmci_softc {int /*<<< orphan*/  vmci_spinlock; TYPE_1__ vmci_notifications_bitmap; int /*<<< orphan*/  vmci_ioh0; int /*<<< orphan*/  vmci_iot0; int /*<<< orphan*/ * vmci_res0; int /*<<< orphan*/  vmci_delayed_work_lock; int /*<<< orphan*/  vmci_delayed_work_task; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_CONTROL_ADDR ; 
 int /*<<< orphan*/  VMCI_CONTROL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct vmci_softc*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct vmci_softc*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct vmci_softc *sc;

	sc = FUNC1(dev);

	FUNC8();
	FUNC10();

	FUNC6(sc);

	FUNC5();

	FUNC4(taskqueue_thread, &sc->vmci_delayed_work_task);
	FUNC2(&sc->vmci_delayed_work_lock);

	if (sc->vmci_res0 != NULL)
		FUNC0(sc->vmci_iot0, sc->vmci_ioh0,
		    VMCI_CONTROL_ADDR, VMCI_CONTROL_RESET);

	if (sc->vmci_notifications_bitmap.dma_vaddr != NULL)
		FUNC7(&sc->vmci_notifications_bitmap);

	FUNC9(sc);

	FUNC2(&sc->vmci_spinlock);

	FUNC3(dev);

	return (0);
}