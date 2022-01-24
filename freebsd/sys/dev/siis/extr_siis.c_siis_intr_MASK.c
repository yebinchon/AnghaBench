#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_4__ {scalar_t__ r_irq_rid; } ;
struct siis_controller {int channels; int gctl; int /*<<< orphan*/  r_gmem; TYPE_2__ irq; TYPE_1__* interrupt; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* function ) (void*) ;void* argument; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIIS_GCTL ; 
 int SIIS_GCTL_MSIACK ; 
 int /*<<< orphan*/  SIIS_IS ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	struct siis_controller *ctlr = (struct siis_controller *)data;
	u_int32_t is;
	void *arg;
	int unit;

	is = FUNC0(ctlr->r_gmem, SIIS_IS);
	for (unit = 0; unit < ctlr->channels; unit++) {
		if ((is & FUNC2(unit)) != 0 &&
		    (arg = ctlr->interrupt[unit].argument)) {
			ctlr->interrupt[unit].function(arg);
		}
	}
	/* Acknowledge interrupt, if MSI enabled. */
	if (ctlr->irq.r_irq_rid) {
		FUNC1(ctlr->r_gmem, SIIS_GCTL,
		    ctlr->gctl | SIIS_GCTL_MSIACK);
	}
}