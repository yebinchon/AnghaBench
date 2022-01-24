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
typedef  int /*<<< orphan*/  xen_intr_handle_t ;
struct xenisrc {scalar_t__ xi_type; int /*<<< orphan*/  xi_port; } ;
struct evtchn_send {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_send ; 
 scalar_t__ EVTCHN_TYPE_IPI ; 
 scalar_t__ EVTCHN_TYPE_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct evtchn_send*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct xenisrc* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(xen_intr_handle_t handle)
{
	struct xenisrc *isrc;

	isrc = FUNC2(handle);
	if (isrc != NULL) {
		FUNC1(isrc->xi_type == EVTCHN_TYPE_PORT ||
			isrc->xi_type == EVTCHN_TYPE_IPI,
			("evtchn_signal on something other than a local port"));
		struct evtchn_send send = { .port = isrc->xi_port };
		(void)FUNC0(EVTCHNOP_send, &send);
	}
}