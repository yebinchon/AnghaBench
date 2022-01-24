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
typedef  size_t uint32_t ;
typedef  size_t uint16_t ;
struct vring_used_elem {void* len; void* id; } ;
struct vring_used {int /*<<< orphan*/  idx; struct vring_used_elem* ring; } ;
struct vqueue_info {size_t vq_qsize; int /*<<< orphan*/  vq_last_avail; TYPE_1__* vq_avail; struct vring_used* vq_used; } ;
struct iovec {int /*<<< orphan*/  iov_len; scalar_t__ iov_base; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ring; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct vqueue_info *vq, struct iovec *iov, int n, uint32_t iolen)
{
	volatile struct vring_used_elem *vue;
	volatile struct vring_used *vu;
	uint16_t head, uidx, mask;
	int i;

	mask = vq->vq_qsize - 1;
	vu = vq->vq_used;
	head = FUNC0(vq->vq_avail->ring[vq->vq_last_avail++ & mask]);

	uidx = FUNC0(vu->idx);
	vue = &vu->ring[uidx++ & mask];
	vue->id = FUNC2(head);

	vue->len = FUNC2(iolen);
	vu->idx = FUNC1(uidx);

	/* Clean up */
	for (i = 0; i < n; i++) {
		FUNC3((void *)iov[i].iov_base, iov[i].iov_len);
	}
}