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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vtpci_virtqueue {int /*<<< orphan*/  vtv_no_intr; struct virtqueue* vtv_vq; } ;
struct vtpci_softc {scalar_t__ vtpci_nvqs; struct vtpci_virtqueue* vtpci_vqs; } ;
struct vq_alloc_info {int /*<<< orphan*/ * vqai_intr; struct virtqueue** vqai_vq; } ;
struct virtqueue {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int VIRTIO_PCI_QUEUE_ADDR_SHIFT ; 
 int /*<<< orphan*/  VIRTIO_PCI_QUEUE_NUM ; 
 int /*<<< orphan*/  VIRTIO_PCI_QUEUE_PFN ; 
 int /*<<< orphan*/  VIRTIO_PCI_VRING_ALIGN ; 
 struct vtpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct vtpci_virtqueue* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vq_alloc_info*,struct virtqueue**) ; 
 int FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtpci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vtpci_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vtpci_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int flags, int nvqs,
    struct vq_alloc_info *vq_info)
{
	struct vtpci_softc *sc;
	struct virtqueue *vq;
	struct vtpci_virtqueue *vqx;
	struct vq_alloc_info *info;
	int idx, error;
	uint16_t size;

	sc = FUNC0(dev);

	if (sc->vtpci_nvqs != 0)
		return (EALREADY);
	if (nvqs <= 0)
		return (EINVAL);

	sc->vtpci_vqs = FUNC2(nvqs * sizeof(struct vtpci_virtqueue),
	    M_DEVBUF, M_NOWAIT | M_ZERO);
	if (sc->vtpci_vqs == NULL)
		return (ENOMEM);

	for (idx = 0; idx < nvqs; idx++) {
		vqx = &sc->vtpci_vqs[idx];
		info = &vq_info[idx];

		FUNC7(sc, idx);
		size = FUNC6(sc, VIRTIO_PCI_QUEUE_NUM);

		error = FUNC3(dev, idx, size, VIRTIO_PCI_VRING_ALIGN,
		    ~(vm_paddr_t)0, info, &vq);
		if (error) {
			FUNC1(dev,
			    "cannot allocate virtqueue %d: %d\n", idx, error);
			break;
		}

		FUNC8(sc, VIRTIO_PCI_QUEUE_PFN,
		    FUNC4(vq) >> VIRTIO_PCI_QUEUE_ADDR_SHIFT);

		vqx->vtv_vq = *info->vqai_vq = vq;
		vqx->vtv_no_intr = info->vqai_intr == NULL;

		sc->vtpci_nvqs++;
	}

	if (error)
		FUNC5(sc);

	return (error);
}