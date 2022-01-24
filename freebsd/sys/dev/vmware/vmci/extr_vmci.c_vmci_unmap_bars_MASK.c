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
struct vmci_softc {int /*<<< orphan*/ * vmci_res1; int /*<<< orphan*/  vmci_dev; int /*<<< orphan*/ * vmci_res0; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct vmci_softc *sc)
{
	int rid;

	if (sc->vmci_res0 != NULL) {
		rid = FUNC0(0);
		FUNC1(sc->vmci_dev, SYS_RES_IOPORT, rid,
		    sc->vmci_res0);
		sc->vmci_res0 = NULL;
	}

	if (sc->vmci_res1 != NULL) {
		rid = FUNC0(1);
		FUNC1(sc->vmci_dev, SYS_RES_MEMORY, rid,
		    sc->vmci_res1);
		sc->vmci_res1 = NULL;
	}
}