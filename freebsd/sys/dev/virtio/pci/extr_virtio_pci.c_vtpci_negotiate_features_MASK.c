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
typedef  int uint64_t ;
struct vtpci_softc {int vtpci_features; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_PCI_GUEST_FEATURES ; 
 int /*<<< orphan*/  VIRTIO_PCI_HOST_FEATURES ; 
 struct vtpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vtpci_softc*,char*,int) ; 
 int FUNC3 (struct vtpci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vtpci_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint64_t
FUNC5(device_t dev, uint64_t child_features)
{
	struct vtpci_softc *sc;
	uint64_t host_features, features;

	sc = FUNC0(dev);

	host_features = FUNC3(sc, VIRTIO_PCI_HOST_FEATURES);
	FUNC2(sc, "host", host_features);

	/*
	 * Limit negotiated features to what the driver, virtqueue, and
	 * host all support.
	 */
	features = host_features & child_features;
	features = FUNC1(features);
	sc->vtpci_features = features;

	FUNC2(sc, "negotiated", features);
	FUNC4(sc, VIRTIO_PCI_GUEST_FEATURES, features);

	return (features);
}