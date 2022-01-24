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
struct vqueue_info {scalar_t__ vq_last_avail; TYPE_1__* vq_avail; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vqueue_info*) ; 

int
FUNC2(struct vqueue_info *vq)
{

	return (FUNC1(vq) && vq->vq_last_avail !=
		FUNC0(vq->vq_avail->idx));
}