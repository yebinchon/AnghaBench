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
typedef  int /*<<< orphan*/  uint8_t ;
struct vtpci_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_RESET ; 
 int /*<<< orphan*/  VIRTIO_PCI_STATUS ; 
 struct vtpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vtpci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, uint8_t status)
{
	struct vtpci_softc *sc;

	sc = FUNC0(dev);

	if (status != VIRTIO_CONFIG_STATUS_RESET)
		status |= FUNC1(dev);

	FUNC2(sc, VIRTIO_PCI_STATUS, status);
}