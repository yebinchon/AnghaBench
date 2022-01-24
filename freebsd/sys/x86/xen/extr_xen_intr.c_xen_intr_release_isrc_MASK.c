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
struct TYPE_2__ {scalar_t__ is_handlers; } ;
struct xenisrc {size_t xi_port; scalar_t__ xi_close; int /*<<< orphan*/ * xi_cookie; int /*<<< orphan*/  xi_type; scalar_t__ xi_cpu; TYPE_1__ xi_intsrc; } ;
struct evtchn_close {size_t port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_close ; 
 int /*<<< orphan*/  EVTCHN_TYPE_UNBOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct evtchn_close*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 
 int /*<<< orphan*/ ** xen_intr_port_to_isrc ; 

__attribute__((used)) static int
FUNC10(struct xenisrc *isrc)
{

	FUNC7(&xen_intr_isrc_lock);
	FUNC1(isrc->xi_intsrc.is_handlers == 0,
	    ("Release called, but xenisrc still in use"));
	FUNC5(isrc->xi_port);
	FUNC2(isrc->xi_port);

	/* Rebind port to CPU 0. */
	FUNC3(isrc->xi_cpu, isrc->xi_port);
	FUNC4(0, isrc->xi_port);

	if (isrc->xi_close != 0 && FUNC6(isrc->xi_port)) {
		struct evtchn_close close = { .port = isrc->xi_port };
		if (FUNC0(EVTCHNOP_close, &close))
			FUNC9("EVTCHNOP_close failed");
	}

	xen_intr_port_to_isrc[isrc->xi_port] = NULL;
	isrc->xi_cpu = 0;
	isrc->xi_type = EVTCHN_TYPE_UNBOUND;
	isrc->xi_port = 0;
	isrc->xi_cookie = NULL;
	FUNC8(&xen_intr_isrc_lock);
	return (0);
}