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
struct TYPE_2__ {int /*<<< orphan*/ * tq; int /*<<< orphan*/  work; } ;
struct octeon_device {TYPE_1__ dma_comp_tq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct octeon_device *oct)
{

	if (oct->dma_comp_tq.tq != NULL) {
		while (FUNC0(oct->dma_comp_tq.tq,
						&oct->dma_comp_tq.work, NULL))
			FUNC1(oct->dma_comp_tq.tq,
						&oct->dma_comp_tq.work);
		FUNC2(oct->dma_comp_tq.tq);
		oct->dma_comp_tq.tq = NULL;
	}
}