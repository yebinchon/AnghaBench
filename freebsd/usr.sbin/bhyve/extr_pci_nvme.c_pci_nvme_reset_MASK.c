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
struct pci_nvme_softc {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_nvme_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct pci_nvme_softc *sc)
{
	FUNC1(&sc->mtx);
	FUNC0(sc);
	FUNC2(&sc->mtx);
}