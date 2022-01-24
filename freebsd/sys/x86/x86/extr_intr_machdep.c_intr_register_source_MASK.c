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
struct intsrc {scalar_t__ is_handlers; int /*<<< orphan*/  is_event; TYPE_1__* is_pic; } ;
typedef  int /*<<< orphan*/  mask_fn ;
struct TYPE_2__ {int (* pic_vector ) (struct intsrc*) ;scalar_t__ pic_eoi_source; scalar_t__ pic_enable_source; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct intsrc** interrupt_sources ; 
 int /*<<< orphan*/  intr_assign_cpu ; 
 int /*<<< orphan*/  intr_disable_src ; 
 int FUNC1 (int /*<<< orphan*/ *,struct intsrc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct intsrc*) ; 
 int /*<<< orphan*/  intrsrc_lock ; 
 int num_io_irqs ; 
 int FUNC5 (struct intsrc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct intsrc *isrc)
{
	int error, vector;

	FUNC0(FUNC3(isrc->is_pic), ("unregistered PIC"));
	vector = isrc->is_pic->pic_vector(isrc);
	FUNC0(vector < num_io_irqs, ("IRQ %d too large (%u irqs)", vector,
	    num_io_irqs));
	if (interrupt_sources[vector] != NULL)
		return (EEXIST);
	error = FUNC1(&isrc->is_event, isrc, 0, vector,
	    intr_disable_src, (mask_fn)isrc->is_pic->pic_enable_source,
	    (mask_fn)isrc->is_pic->pic_eoi_source, intr_assign_cpu, "irq%d:",
	    vector);
	if (error)
		return (error);
	FUNC6(&intrsrc_lock);
	if (interrupt_sources[vector] != NULL) {
		FUNC7(&intrsrc_lock);
		FUNC2(isrc->is_event);
		return (EEXIST);
	}
	FUNC4(isrc);
	interrupt_sources[vector] = isrc;
	isrc->is_handlers = 0;
	FUNC7(&intrsrc_lock);
	return (0);
}