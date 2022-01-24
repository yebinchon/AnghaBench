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
struct xenisrc {size_t xi_port; int /*<<< orphan*/  xi_pirq; scalar_t__ xi_edgetrigger; } ;
struct physdev_irq_status_query {int flags; int /*<<< orphan*/  irq; } ;
struct intsrc {int dummy; } ;
struct evtchn_bind_pirq {size_t port; int /*<<< orphan*/  flags; int /*<<< orphan*/  pirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIND_PIRQ__WILL_SHARE ; 
 int /*<<< orphan*/  EVTCHNOP_bind_pirq ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_bind_pirq*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct physdev_irq_status_query*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PHYSDEVOP_irq_status_query ; 
 int XENIRQSTAT_needs_eoi ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 
 int /*<<< orphan*/  xen_intr_pirq_eoi_map ; 
 int /*<<< orphan*/  xen_intr_pirq_eoi_map_enabled ; 
 struct xenisrc** xen_intr_port_to_isrc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct intsrc *base_isrc)
{
	struct xenisrc *isrc;
	struct evtchn_bind_pirq bind_pirq;
	struct physdev_irq_status_query irq_status;
	int error;

	isrc = (struct xenisrc *)base_isrc;

	if (!xen_intr_pirq_eoi_map_enabled) {
		irq_status.irq = isrc->xi_pirq;
		error = FUNC1(PHYSDEVOP_irq_status_query,
		    &irq_status);
		if (error)
			FUNC6("unable to get status of IRQ#%d", isrc->xi_pirq);

		if (irq_status.flags & XENIRQSTAT_needs_eoi) {
			/*
			 * Since the dynamic PIRQ EOI map is not available
			 * mark the PIRQ as needing EOI unconditionally.
			 */
			FUNC7(isrc->xi_pirq, xen_intr_pirq_eoi_map);
		}
	}

	bind_pirq.pirq = isrc->xi_pirq;
	bind_pirq.flags = isrc->xi_edgetrigger ? 0 : BIND_PIRQ__WILL_SHARE;
	error = FUNC0(EVTCHNOP_bind_pirq, &bind_pirq);
	if (error)
		FUNC6("unable to bind IRQ#%d", isrc->xi_pirq);

	isrc->xi_port = bind_pirq.port;

	FUNC4(&xen_intr_isrc_lock);
	FUNC2((xen_intr_port_to_isrc[bind_pirq.port] == NULL),
	    ("trying to override an already setup event channel port"));
	xen_intr_port_to_isrc[bind_pirq.port] = isrc;
	FUNC5(&xen_intr_isrc_lock);

	FUNC3(isrc->xi_port);
}