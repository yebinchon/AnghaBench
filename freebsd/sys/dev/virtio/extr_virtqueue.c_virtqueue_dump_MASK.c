#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* used; TYPE_1__* avail; } ;
struct virtqueue {char* vq_name; int vq_nentries; int vq_free_cnt; int vq_queued_cnt; int vq_desc_head_idx; int vq_used_cons_idx; TYPE_3__ vq_ring; } ;
struct TYPE_5__ {int idx; int flags; } ;
struct TYPE_4__ {int idx; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int,int,int,int,int,int,int,int) ; 
 int FUNC1 (struct virtqueue*) ; 
 int FUNC2 (TYPE_3__*) ; 

void
FUNC3(struct virtqueue *vq)
{

	if (vq == NULL)
		return;

	FUNC0("VQ: %s - size=%d; free=%d; used=%d; queued=%d; "
	    "desc_head_idx=%d; avail.idx=%d; used_cons_idx=%d; "
	    "used.idx=%d; used_event_idx=%d; avail.flags=0x%x; used.flags=0x%x\n",
	    vq->vq_name, vq->vq_nentries, vq->vq_free_cnt,
	    FUNC1(vq), vq->vq_queued_cnt, vq->vq_desc_head_idx,
	    vq->vq_ring.avail->idx, vq->vq_used_cons_idx,
	    vq->vq_ring.used->idx,
		FUNC2(&vq->vq_ring),
	    vq->vq_ring.avail->flags,
	    vq->vq_ring.used->flags);
}