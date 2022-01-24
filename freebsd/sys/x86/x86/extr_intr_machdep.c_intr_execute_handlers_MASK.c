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
struct trapframe {int dummy; } ;
struct intsrc {scalar_t__* is_straycount; TYPE_1__* is_pic; struct intr_event* is_event; int /*<<< orphan*/ * is_count; } ;
struct intr_event {int dummy; } ;
struct TYPE_2__ {int (* pic_vector ) (struct intsrc*) ;int /*<<< orphan*/  (* pic_disable_source ) (struct intsrc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ MAX_STRAY_LOG ; 
 int /*<<< orphan*/  PIC_EOI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int clkintr_pending ; 
 scalar_t__ FUNC1 (struct intr_event*,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct intsrc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v_intr ; 

void
FUNC5(struct intsrc *isrc, struct trapframe *frame)
{
	struct intr_event *ie;
	int vector;

	/*
	 * We count software interrupts when we process them.  The
	 * code here follows previous practice, but there's an
	 * argument for counting hardware interrupts when they're
	 * processed too.
	 */
	(*isrc->is_count)++;
	FUNC0(v_intr);

	ie = isrc->is_event;

	/*
	 * XXX: We assume that IRQ 0 is only used for the ISA timer
	 * device (clk).
	 */
	vector = isrc->is_pic->pic_vector(isrc);
	if (vector == 0)
		clkintr_pending = 1;

	/*
	 * For stray interrupts, mask and EOI the source, bump the
	 * stray count, and log the condition.
	 */
	if (FUNC1(ie, frame) != 0) {
		isrc->is_pic->pic_disable_source(isrc, PIC_EOI);
		(*isrc->is_straycount)++;
		if (*isrc->is_straycount < MAX_STRAY_LOG)
			FUNC2(LOG_ERR, "stray irq%d\n", vector);
		else if (*isrc->is_straycount == MAX_STRAY_LOG)
			FUNC2(LOG_CRIT,
			    "too many stray irq %d's: not logging anymore\n",
			    vector);
	}
}