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
typedef  int /*<<< orphan*/  uint64_t ;
struct vtpci_softc {int vtpci_nvqs; int vtpci_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_ACK ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_DRIVER ; 
 scalar_t__ VIRTIO_CONFIG_STATUS_RESET ; 
 int VTPCI_FLAG_MSIX ; 
 struct vtpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vtpci_softc*,int) ; 
 int FUNC4 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint64_t features)
{
	struct vtpci_softc *sc;
	int idx, error;

	sc = FUNC0(dev);

	/*
	 * Redrive the device initialization. This is a bit of an abuse of
	 * the specification, but VirtualBox, QEMU/KVM, and BHyVe seem to
	 * play nice.
	 *
	 * We do not allow the host device to change from what was originally
	 * negotiated beyond what the guest driver changed. MSIX state should
	 * not change, number of virtqueues and their size remain the same, etc.
	 * This will need to be rethought when we want to support migration.
	 */

	if (FUNC1(dev) != VIRTIO_CONFIG_STATUS_RESET)
		FUNC6(dev);

	/*
	 * Quickly drive the status through ACK and DRIVER. The device
	 * does not become usable again until vtpci_reinit_complete().
	 */
	FUNC5(dev, VIRTIO_CONFIG_STATUS_ACK);
	FUNC5(dev, VIRTIO_CONFIG_STATUS_DRIVER);

	FUNC2(dev, features);

	for (idx = 0; idx < sc->vtpci_nvqs; idx++) {
		error = FUNC3(sc, idx);
		if (error)
			return (error);
	}

	if (sc->vtpci_flags & VTPCI_FLAG_MSIX) {
		error = FUNC4(sc);
		if (error)
			return (error);
	}

	return (0);
}