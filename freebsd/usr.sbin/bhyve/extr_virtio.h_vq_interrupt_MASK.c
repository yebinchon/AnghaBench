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
struct vqueue_info {int /*<<< orphan*/  vq_msix_idx; } ;
struct virtio_softc {int /*<<< orphan*/  vs_pi; int /*<<< orphan*/  vs_isr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_softc*) ; 
 int /*<<< orphan*/  VTCFG_ISR_QUEUES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC6(struct virtio_softc *vs, struct vqueue_info *vq)
{

	if (FUNC5(vs->vs_pi))
		FUNC3(vs->vs_pi, vq->vq_msix_idx);
	else {
		FUNC0(vs);
		vs->vs_isr |= VTCFG_ISR_QUEUES;
		FUNC2(vs->vs_pi, 0);
		FUNC4(vs->vs_pi);
		FUNC1(vs);
	}
}