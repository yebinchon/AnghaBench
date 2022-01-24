#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct vring_desc {int len; size_t next; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct vq_desc_extra {int ndescs; int /*<<< orphan*/  indirect; int /*<<< orphan*/  indirect_paddr; int /*<<< orphan*/ * cookie; } ;
struct TYPE_2__ {struct vring_desc* desc; } ;
struct virtqueue {int vq_max_indirect_size; size_t vq_desc_head_idx; scalar_t__ vq_free_cnt; struct vq_desc_extra* vq_descx; TYPE_1__ vq_ring; } ;
struct sglist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtqueue*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*,size_t) ; 
 int /*<<< orphan*/  VRING_DESC_F_INDIRECT ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sglist*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct virtqueue*,size_t) ; 

__attribute__((used)) static void
FUNC5(struct virtqueue *vq, void *cookie,
    struct sglist *sg, int readable, int writable)
{
	struct vring_desc *dp;
	struct vq_desc_extra *dxp;
	int needed;
	uint16_t head_idx;

	needed = readable + writable;
	FUNC0(vq, needed <= vq->vq_max_indirect_size,
	    "enqueuing too many indirect descriptors");

	head_idx = vq->vq_desc_head_idx;
	FUNC2(vq, head_idx);
	dp = &vq->vq_ring.desc[head_idx];
	dxp = &vq->vq_descx[head_idx];

	FUNC0(vq, dxp->cookie == NULL,
	    "cookie already exists for index %d", head_idx);
	dxp->cookie = cookie;
	dxp->ndescs = 1;

	dp->addr = dxp->indirect_paddr;
	dp->len = needed * sizeof(struct vring_desc);
	dp->flags = VRING_DESC_F_INDIRECT;

	FUNC3(vq, dxp->indirect, 0,
	    sg, readable, writable);

	vq->vq_desc_head_idx = dp->next;
	vq->vq_free_cnt--;
	if (vq->vq_free_cnt == 0)
		FUNC1(vq);
	else
		FUNC2(vq, vq->vq_desc_head_idx);

	FUNC4(vq, head_idx);
}