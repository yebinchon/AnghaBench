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
struct vtpci_softc {int /*<<< orphan*/  vtpci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct vtpci_softc *sc)
{

	/*
	 * Setting the status to RESET sets the host device to
	 * the original, uninitialized state.
	 */
	FUNC0(sc->vtpci_dev, VIRTIO_CONFIG_STATUS_RESET);
}