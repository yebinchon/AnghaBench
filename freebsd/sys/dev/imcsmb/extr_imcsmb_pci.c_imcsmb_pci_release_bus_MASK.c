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
struct imcsmb_pci_softc {int /*<<< orphan*/  semaphore; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct imcsmb_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev)
{
	struct imcsmb_pci_softc *sc;

	sc = FUNC1(dev);

	/*
	 * IF NEEDED, INSERT MOTHERBOARD-SPECIFIC CODE TO RE-ENABLE DIMM
	 * TEMPERATURE MONITORING HERE.
	 */

	FUNC0(&sc->semaphore, 0);
}