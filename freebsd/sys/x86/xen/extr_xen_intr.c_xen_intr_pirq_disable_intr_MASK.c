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
struct xenisrc {size_t xi_port; int /*<<< orphan*/  xi_pirq; } ;
struct intsrc {int dummy; } ;
struct evtchn_close {size_t port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_close ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_close*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 
 int /*<<< orphan*/ ** xen_intr_port_to_isrc ; 

__attribute__((used)) static void
FUNC5(struct intsrc *base_isrc)
{
	struct xenisrc *isrc;
	struct evtchn_close close;
	int error;

	isrc = (struct xenisrc *)base_isrc;

	FUNC1(isrc->xi_port);

	close.port = isrc->xi_port;
	error = FUNC0(EVTCHNOP_close, &close);
	if (error)
		FUNC4("unable to close event channel %d IRQ#%d",
		    isrc->xi_port, isrc->xi_pirq);

	FUNC2(&xen_intr_isrc_lock);
	xen_intr_port_to_isrc[isrc->xi_port] = NULL;
	FUNC3(&xen_intr_isrc_lock);

	isrc->xi_port = 0;
}