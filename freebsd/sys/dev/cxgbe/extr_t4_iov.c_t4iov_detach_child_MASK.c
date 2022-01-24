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
struct t4iov_softc {int sc_attached; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct t4iov_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct t4iov_softc *sc;
#ifdef PCI_IOV
	int error;
#endif

	sc = FUNC0(dev);
	if (!sc->sc_attached)
		return (0);

#ifdef PCI_IOV
	error = pci_iov_detach(dev);
	if (error != 0) {
		device_printf(dev, "Failed to disable SR-IOV\n");
		return (error);
	}
#endif

	sc->sc_attached = false;
	return (0);
}