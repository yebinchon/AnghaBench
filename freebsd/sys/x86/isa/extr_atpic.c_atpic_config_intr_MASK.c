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
typedef  int u_int ;
struct intsrc {int dummy; } ;
struct atpic_intsrc {int at_trigger; } ;
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef  enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int INTR_POLARITY_CONFORM ; 
 int INTR_POLARITY_HIGH ; 
 int INTR_POLARITY_LOW ; 
 int INTR_TRIGGER_CONFORM ; 
 int INTR_TRIGGER_EDGE ; 
 int INTR_TRIGGER_LEVEL ; 
 int FUNC0 (struct intsrc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  elcr_found ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct intsrc *isrc, enum intr_trigger trig,
    enum intr_polarity pol)
{
	struct atpic_intsrc *ai = (struct atpic_intsrc *)isrc;
	u_int vector;

	/* Map conforming values to edge/hi and sanity check the values. */
	if (trig == INTR_TRIGGER_CONFORM)
		trig = INTR_TRIGGER_EDGE;
	if (pol == INTR_POLARITY_CONFORM)
		pol = INTR_POLARITY_HIGH;
	vector = FUNC0(isrc);
	if ((trig == INTR_TRIGGER_EDGE && pol == INTR_POLARITY_LOW) ||
	    (trig == INTR_TRIGGER_LEVEL && pol == INTR_POLARITY_HIGH)) {
		FUNC2(
		"atpic: Mismatched config for IRQ%u: trigger %s, polarity %s\n",
		    vector, trig == INTR_TRIGGER_EDGE ? "edge" : "level",
		    pol == INTR_POLARITY_HIGH ? "high" : "low");
		return (EINVAL);
	}

	/* If there is no change, just return. */
	if (ai->at_trigger == trig)
		return (0);

	/*
	 * Certain IRQs can never be level/lo, so don't try to set them
	 * that way if asked.  At least some ELCR registers ignore setting
	 * these bits as well.
	 */
	if ((vector == 0 || vector == 1 || vector == 2 || vector == 13) &&
	    trig == INTR_TRIGGER_LEVEL) {
		if (bootverbose)
			FUNC2(
		"atpic: Ignoring invalid level/low configuration for IRQ%u\n",
			    vector);
		return (EINVAL);
	}
	if (!elcr_found) {
		if (bootverbose)
			FUNC2("atpic: No ELCR to configure IRQ%u as %s\n",
			    vector, trig == INTR_TRIGGER_EDGE ? "edge/high" :
			    "level/low");
		return (ENXIO);
	}
	if (bootverbose)
		FUNC2("atpic: Programming IRQ%u as %s\n", vector,
		    trig == INTR_TRIGGER_EDGE ? "edge/high" : "level/low");
	FUNC3();
	FUNC1(FUNC0(isrc), trig);
	ai->at_trigger = trig;
	FUNC4();
	return (0);
}