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
typedef  scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct xenisrc {scalar_t__ xi_type; TYPE_1__ xi_intsrc; } ;
typedef  enum evtchn_type { ____Placeholder_evtchn_type } evtchn_type ;

/* Variables and functions */
 scalar_t__ EVTCHN_TYPE_UNBOUND ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ first_evtchn_irq ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int xen_intr_auto_vector_count ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 

__attribute__((used)) static struct xenisrc *
FUNC3(enum evtchn_type type)
{
	int isrc_idx;

	FUNC0(FUNC2(&xen_intr_isrc_lock), ("Evtchn isrc lock not held"));

	for (isrc_idx = 0; isrc_idx < xen_intr_auto_vector_count; isrc_idx ++) {
		struct xenisrc *isrc;
		u_int vector;

		vector = first_evtchn_irq + isrc_idx;
		isrc = (struct xenisrc *)FUNC1(vector);
		if (isrc != NULL
		 && isrc->xi_type == EVTCHN_TYPE_UNBOUND) {
			FUNC0(isrc->xi_intsrc.is_handlers == 0,
			    ("Free evtchn still has handlers"));
			isrc->xi_type = type;
			return (isrc);
		}
	}
	return (NULL);
}