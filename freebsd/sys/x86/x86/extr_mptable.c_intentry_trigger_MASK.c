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
typedef  TYPE_1__* int_entry_ptr ;
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
struct TYPE_3__ {int int_flags; int /*<<< orphan*/  src_bus_irq; int /*<<< orphan*/  src_bus_id; } ;

/* Variables and functions */
 int INTENTRY_FLAGS_TRIGGER ; 
#define  INTENTRY_FLAGS_TRIGGER_CONFORM 130 
#define  INTENTRY_FLAGS_TRIGGER_EDGE 129 
#define  INTENTRY_FLAGS_TRIGGER_LEVEL 128 
 int INTR_TRIGGER_EDGE ; 
 int INTR_TRIGGER_LEVEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static enum intr_trigger
FUNC2(int_entry_ptr intr)
{

	switch (intr->int_flags & INTENTRY_FLAGS_TRIGGER) {
	case INTENTRY_FLAGS_TRIGGER_CONFORM:
		return (FUNC0(intr->src_bus_id,
			    intr->src_bus_irq));
	case INTENTRY_FLAGS_TRIGGER_EDGE:
		return (INTR_TRIGGER_EDGE);
	case INTENTRY_FLAGS_TRIGGER_LEVEL:
		return (INTR_TRIGGER_LEVEL);
	default:
		FUNC1("Bogus interrupt flags");
	}
}