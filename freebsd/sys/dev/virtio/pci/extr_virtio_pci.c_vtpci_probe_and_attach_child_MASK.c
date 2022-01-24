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
struct vtpci_softc {int /*<<< orphan*/ * vtpci_child_dev; int /*<<< orphan*/ * vtpci_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ DS_NOTPRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_ACK ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_DRIVER ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_DRIVER_OK ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_FAILED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct vtpci_softc *sc)
{
	device_t dev, child;

	dev = sc->vtpci_dev;
	child = sc->vtpci_child_dev;

	if (child == NULL)
		return;

	if (FUNC2(child) != DS_NOTPRESENT)
		return;

	if (FUNC3(child) != 0)
		return;

	FUNC6(dev, VIRTIO_CONFIG_STATUS_DRIVER);
	if (FUNC1(child) != 0) {
		FUNC6(dev, VIRTIO_CONFIG_STATUS_FAILED);
		FUNC5(sc);
		FUNC4(sc);
		/* Reset status for future attempt. */
		FUNC6(dev, VIRTIO_CONFIG_STATUS_ACK);
	} else {
		FUNC6(dev, VIRTIO_CONFIG_STATUS_DRIVER_OK);
		FUNC0(child);
	}
}