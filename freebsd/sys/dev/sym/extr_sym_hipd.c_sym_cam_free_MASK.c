#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hcb_p ;
struct TYPE_3__ {int /*<<< orphan*/ * path; int /*<<< orphan*/ * sim; int /*<<< orphan*/ * intr; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(hcb_p np)
{

	FUNC1(MA_NOTOWNED);

	if (np->intr) {
		FUNC3(np->device, np->irq_res, np->intr);
		np->intr = NULL;
	}

	FUNC0();

	if (np->sim) {
		FUNC6(FUNC5(np->sim));
		FUNC4(np->sim, /*free_devq*/ TRUE);
		np->sim = NULL;
	}
	if (np->path) {
		FUNC7(np->path);
		np->path = NULL;
	}

	FUNC2();
}