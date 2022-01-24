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
struct mwl_pci_softc {int /*<<< orphan*/  sc_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mwl_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct mwl_pci_softc *psc = FUNC0(dev);

	FUNC2(dev);

	FUNC1(&psc->sc_sc);

	return (0);
}