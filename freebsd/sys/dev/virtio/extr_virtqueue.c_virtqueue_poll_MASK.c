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
typedef  int /*<<< orphan*/  uint32_t ;
struct virtqueue {int /*<<< orphan*/  vq_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (struct virtqueue*,int /*<<< orphan*/ *) ; 

void *
FUNC3(struct virtqueue *vq, uint32_t *len)
{
	void *cookie;

	FUNC0(vq->vq_dev);
	while ((cookie = FUNC2(vq, len)) == NULL) {
		FUNC1();
		FUNC0(vq->vq_dev);
	}

	return (cookie);
}