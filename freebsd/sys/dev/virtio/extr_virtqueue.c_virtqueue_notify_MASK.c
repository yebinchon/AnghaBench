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
struct virtqueue {scalar_t__ vq_queued_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 

void
FUNC3(struct virtqueue *vq)
{

	/* Ensure updated avail->idx is visible to host. */
	FUNC0();

	if (FUNC1(vq))
		FUNC2(vq);
	vq->vq_queued_cnt = 0;
}