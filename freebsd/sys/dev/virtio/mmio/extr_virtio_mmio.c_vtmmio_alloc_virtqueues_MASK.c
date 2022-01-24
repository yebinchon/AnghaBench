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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct vtmmio_virtqueue {int /*<<< orphan*/  vtv_no_intr; struct virtqueue* vtv_vq; } ;
struct vtmmio_softc {scalar_t__ vtmmio_nvqs; struct vtmmio_virtqueue* vtmmio_vqs; } ;
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
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VIRTIO_MMIO_GUEST_PAGE_SIZE ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_ALIGN ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_NUM ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_NUM_MAX ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_PFN ; 
 int /*<<< orphan*/  VIRTIO_MMIO_QUEUE_SEL ; 
 int VIRTIO_MMIO_VRING_ALIGN ; 
 struct vtmmio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct vtmmio_virtqueue* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,struct vq_alloc_info*,struct virtqueue**) ; 
 int FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtmmio_softc*) ; 
 int FUNC6 (struct vtmmio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vtmmio_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vtmmio_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int flags, int nvqs,
    struct vq_alloc_info *vq_info)
{
	struct vtmmio_virtqueue *vqx;
	struct vq_alloc_info *info;
	struct vtmmio_softc *sc;
	struct virtqueue *vq;
	uint32_t size;
	int idx, error;

	sc = FUNC0(dev);

	if (sc->vtmmio_nvqs != 0)
		return (EALREADY);
	if (nvqs <= 0)
		return (EINVAL);

	sc->vtmmio_vqs = FUNC2(nvqs * sizeof(struct vtmmio_virtqueue),
	    M_DEVBUF, M_NOWAIT | M_ZERO);
	if (sc->vtmmio_vqs == NULL)
		return (ENOMEM);

	FUNC8(sc, VIRTIO_MMIO_GUEST_PAGE_SIZE,
	    (1 << PAGE_SHIFT));

	for (idx = 0; idx < nvqs; idx++) {
		vqx = &sc->vtmmio_vqs[idx];
		info = &vq_info[idx];

		FUNC8(sc, VIRTIO_MMIO_QUEUE_SEL, idx);

		FUNC7(sc, idx);
		size = FUNC6(sc, VIRTIO_MMIO_QUEUE_NUM_MAX);

		error = FUNC3(dev, idx, size,
		    VIRTIO_MMIO_VRING_ALIGN, ~(vm_paddr_t)0, info, &vq);
		if (error) {
			FUNC1(dev,
			    "cannot allocate virtqueue %d: %d\n",
			    idx, error);
			break;
		}

		FUNC8(sc, VIRTIO_MMIO_QUEUE_NUM, size);
		FUNC8(sc, VIRTIO_MMIO_QUEUE_ALIGN,
		    VIRTIO_MMIO_VRING_ALIGN);
#if 0
		device_printf(dev, "virtqueue paddr 0x%08lx\n",
		    (uint64_t)virtqueue_paddr(vq));
#endif
		FUNC8(sc, VIRTIO_MMIO_QUEUE_PFN,
		    FUNC4(vq) >> PAGE_SHIFT);

		vqx->vtv_vq = *info->vqai_vq = vq;
		vqx->vtv_no_intr = info->vqai_intr == NULL;

		sc->vtmmio_nvqs++;
	}

	if (error)
		FUNC5(sc);

	return (error);
}