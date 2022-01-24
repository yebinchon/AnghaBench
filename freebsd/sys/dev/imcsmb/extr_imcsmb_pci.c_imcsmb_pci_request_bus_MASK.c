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
 int EWOULDBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct imcsmb_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(device_t dev)
{
	struct imcsmb_pci_softc *sc;
	int rc;

	sc = FUNC1(dev);
	rc = 0;

	/* We don't want to block. Use a simple test-and-set semaphore to
	 * protect the bus.
	 */
	if (FUNC0(&sc->semaphore, 0, 1) == 0) {
		rc = EWOULDBLOCK;
	}

	/*
	 * IF NEEDED, INSERT MOTHERBOARD-SPECIFIC CODE TO DISABLE DIMM
	 * TEMPERATURE MONITORING HERE.
	 */

	return (rc);
}