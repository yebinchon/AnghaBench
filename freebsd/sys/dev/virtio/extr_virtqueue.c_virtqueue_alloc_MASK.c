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
typedef  int uint16_t ;
struct vq_desc_extra {int dummy; } ;
struct vq_alloc_info {int vqai_maxindirsz; int /*<<< orphan*/  vqai_intr_arg; int /*<<< orphan*/  vqai_intr; int /*<<< orphan*/  vqai_name; } ;
struct virtqueue {int vq_queue_index; int vq_alignment; int vq_nentries; int vq_free_cnt; int /*<<< orphan*/ * vq_ring_mem; int /*<<< orphan*/  vq_ring_size; int /*<<< orphan*/  vq_flags; int /*<<< orphan*/  vq_intrhand_arg; int /*<<< orphan*/  vq_intrhand; int /*<<< orphan*/  vq_name; int /*<<< orphan*/  vq_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VIRTIO_MAX_INDIRECT ; 
 int /*<<< orphan*/  VIRTIO_RING_F_EVENT_IDX ; 
 int /*<<< orphan*/  VIRTQUEUE_FLAG_EVENT_IDX ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct virtqueue* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtqueue*) ; 
 int FUNC9 (struct virtqueue*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

int
FUNC12(device_t dev, uint16_t queue, uint16_t size, int align,
    vm_paddr_t highaddr, struct vq_alloc_info *info, struct virtqueue **vqp)
{
	struct virtqueue *vq;
	int error;

	*vqp = NULL;
	error = 0;

	if (size == 0) {
		FUNC2(dev,
		    "virtqueue %d (%s) does not exist (size is zero)\n",
		    queue, info->vqai_name);
		return (ENODEV);
	} else if (!FUNC4(size)) {
		FUNC2(dev,
		    "virtqueue %d (%s) size is not a power of 2: %d\n",
		    queue, info->vqai_name, size);
		return (ENXIO);
	} else if (info->vqai_maxindirsz > VIRTIO_MAX_INDIRECT) {
		FUNC2(dev, "virtqueue %d (%s) requested too many "
		    "indirect descriptors: %d, max %d\n",
		    queue, info->vqai_name, info->vqai_maxindirsz,
		    VIRTIO_MAX_INDIRECT);
		return (EINVAL);
	}

	vq = FUNC3(sizeof(struct virtqueue) +
	    size * sizeof(struct vq_desc_extra), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (vq == NULL) {
		FUNC2(dev, "cannot allocate virtqueue\n");
		return (ENOMEM);
	}

	vq->vq_dev = dev;
	FUNC6(vq->vq_name, info->vqai_name, sizeof(vq->vq_name));
	vq->vq_queue_index = queue;
	vq->vq_alignment = align;
	vq->vq_nentries = size;
	vq->vq_free_cnt = size;
	vq->vq_intrhand = info->vqai_intr;
	vq->vq_intrhand_arg = info->vqai_intr_arg;

	if (FUNC0(dev, VIRTIO_RING_F_EVENT_IDX) != 0)
		vq->vq_flags |= VIRTQUEUE_FLAG_EVENT_IDX;

	if (info->vqai_maxindirsz > 1) {
		error = FUNC9(vq, info->vqai_maxindirsz);
		if (error)
			goto fail;
	}

	vq->vq_ring_size = FUNC5(FUNC11(size, align));
	vq->vq_ring_mem = FUNC1(vq->vq_ring_size, M_DEVBUF,
	    M_NOWAIT | M_ZERO, 0, highaddr, PAGE_SIZE, 0);
	if (vq->vq_ring_mem == NULL) {
		FUNC2(dev,
		    "cannot allocate memory for virtqueue ring\n");
		error = ENOMEM;
		goto fail;
	}

	FUNC10(vq);
	FUNC7(vq);

	*vqp = vq;

fail:
	if (error)
		FUNC8(vq);

	return (error);
}