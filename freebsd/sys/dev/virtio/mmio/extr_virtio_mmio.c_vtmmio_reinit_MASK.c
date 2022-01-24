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
struct vtmmio_softc {int vtmmio_nvqs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_ACK ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_DRIVER ; 
 scalar_t__ VIRTIO_CONFIG_STATUS_RESET ; 
 int /*<<< orphan*/  VIRTIO_MMIO_GUEST_PAGE_SIZE ; 
 struct vtmmio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vtmmio_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vtmmio_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint64_t features)
{
	struct vtmmio_softc *sc;
	int idx, error;

	sc = FUNC0(dev);

	if (FUNC1(dev) != VIRTIO_CONFIG_STATUS_RESET)
		FUNC5(dev);

	/*
	 * Quickly drive the status through ACK and DRIVER. The device
	 * does not become usable again until vtmmio_reinit_complete().
	 */
	FUNC4(dev, VIRTIO_CONFIG_STATUS_ACK);
	FUNC4(dev, VIRTIO_CONFIG_STATUS_DRIVER);

	FUNC2(dev, features);

	FUNC6(sc, VIRTIO_MMIO_GUEST_PAGE_SIZE,
	    (1 << PAGE_SHIFT));

	for (idx = 0; idx < sc->vtmmio_nvqs; idx++) {
		error = FUNC3(sc, idx);
		if (error)
			return (error);
	}

	return (0);
}