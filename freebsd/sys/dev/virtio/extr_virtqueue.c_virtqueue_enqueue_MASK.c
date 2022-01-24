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
struct vq_desc_extra {int ndescs; int /*<<< orphan*/ * cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;
struct virtqueue {int vq_nentries; int vq_max_indirect_size; int vq_free_cnt; size_t vq_desc_head_idx; TYPE_1__ vq_ring; struct vq_desc_extra* vq_descx; } ;
struct sglist {int sg_nseg; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct virtqueue*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*,void*,struct sglist*,int,int) ; 
 size_t FUNC4 (struct virtqueue*,int /*<<< orphan*/ ,size_t,struct sglist*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*,size_t) ; 
 scalar_t__ FUNC6 (struct virtqueue*,int) ; 

int
FUNC7(struct virtqueue *vq, void *cookie, struct sglist *sg,
    int readable, int writable)
{
	struct vq_desc_extra *dxp;
	int needed;
	uint16_t head_idx, idx;

	needed = readable + writable;

	FUNC0(vq, cookie != NULL, "enqueuing with no cookie");
	FUNC0(vq, needed == sg->sg_nseg,
	    "segment count mismatch, %d, %d", needed, sg->sg_nseg);
	FUNC0(vq,
	    needed <= vq->vq_nentries || needed <= vq->vq_max_indirect_size,
	    "too many segments to enqueue: %d, %d/%d", needed,
	    vq->vq_nentries, vq->vq_max_indirect_size);

	if (needed < 1)
		return (EINVAL);
	if (vq->vq_free_cnt == 0)
		return (ENOSPC);

	if (FUNC6(vq, needed)) {
		FUNC3(vq, cookie, sg, readable, writable);
		return (0);
	} else if (vq->vq_free_cnt < needed)
		return (EMSGSIZE);

	head_idx = vq->vq_desc_head_idx;
	FUNC2(vq, head_idx);
	dxp = &vq->vq_descx[head_idx];

	FUNC0(vq, dxp->cookie == NULL,
	    "cookie already exists for index %d", head_idx);
	dxp->cookie = cookie;
	dxp->ndescs = needed;

	idx = FUNC4(vq, vq->vq_ring.desc, head_idx,
	    sg, readable, writable);

	vq->vq_desc_head_idx = idx;
	vq->vq_free_cnt -= needed;
	if (vq->vq_free_cnt == 0)
		FUNC1(vq);
	else
		FUNC2(vq, idx);

	FUNC5(vq, head_idx);

	return (0);
}