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
struct vtpci_softc {scalar_t__ vtpci_child_dev; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int ENOENT ; 
#define  VIRTIO_IVAR_DEVICE 132 
#define  VIRTIO_IVAR_DEVTYPE 131 
#define  VIRTIO_IVAR_SUBDEVICE 130 
#define  VIRTIO_IVAR_SUBVENDOR 129 
#define  VIRTIO_IVAR_VENDOR 128 
 struct vtpci_softc* FUNC0 (scalar_t__) ; 
 uintptr_t FUNC1 (scalar_t__) ; 
 uintptr_t FUNC2 (scalar_t__) ; 
 uintptr_t FUNC3 (scalar_t__) ; 
 uintptr_t FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int index, uintptr_t *result)
{
	struct vtpci_softc *sc;

	sc = FUNC0(dev);

	if (sc->vtpci_child_dev != child)
		return (ENOENT);

	switch (index) {
	case VIRTIO_IVAR_DEVTYPE:
	case VIRTIO_IVAR_SUBDEVICE:
		*result = FUNC2(dev);
		break;
	case VIRTIO_IVAR_VENDOR:
		*result = FUNC4(dev);
		break;
	case VIRTIO_IVAR_DEVICE:
		*result = FUNC1(dev);
		break;
	case VIRTIO_IVAR_SUBVENDOR:
		*result = FUNC3(dev);
		break;
	default:
		return (ENOENT);
	}

	return (0);
}