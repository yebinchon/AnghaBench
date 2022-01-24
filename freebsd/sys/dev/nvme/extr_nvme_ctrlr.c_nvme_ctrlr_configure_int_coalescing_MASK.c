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
struct nvme_controller {scalar_t__ int_coal_threshold; scalar_t__ int_coal_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_controller*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct nvme_controller *ctrlr)
{

	ctrlr->int_coal_time = 0;
	FUNC0("hw.nvme.int_coal_time",
	    &ctrlr->int_coal_time);

	ctrlr->int_coal_threshold = 0;
	FUNC0("hw.nvme.int_coal_threshold",
	    &ctrlr->int_coal_threshold);

	FUNC1(ctrlr, ctrlr->int_coal_time,
	    ctrlr->int_coal_threshold, NULL, NULL);
}