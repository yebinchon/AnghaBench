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
struct iser_device {int comps_used; int /*<<< orphan*/ * pd; int /*<<< orphan*/ * mr; struct iser_comp* comps; int /*<<< orphan*/  event_handler; } ;
struct iser_comp {int /*<<< orphan*/ * cq; int /*<<< orphan*/  tq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_ISER_VERBS ; 
 int /*<<< orphan*/  FUNC0 (struct iser_comp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct iser_device *device)
{
	int i;

	for (i = 0; i < device->comps_used; i++) {
		struct iser_comp *comp = &device->comps[i];

		FUNC4(comp->tq);
		FUNC2(comp->cq);
		comp->cq = NULL;
	}

	(void)FUNC3(&device->event_handler);
	(void)FUNC1(device->pd);

	FUNC0(device->comps, M_ISER_VERBS);
	device->comps = NULL;

	device->mr = NULL;
	device->pd = NULL;
}