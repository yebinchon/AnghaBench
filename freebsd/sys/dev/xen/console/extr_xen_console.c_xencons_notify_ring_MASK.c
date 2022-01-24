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
struct xencons_priv {int /*<<< orphan*/  evtchn; int /*<<< orphan*/ * intr_handle; } ;
struct evtchn_send {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_send ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct evtchn_send*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct xencons_priv *cons)
{
	/*
	 * The console may be used before the ring interrupt is properly
	 * initialized.
	 * If so, fallback to directly use the event channel hypercall.
	 */
	if (FUNC1(cons->intr_handle != NULL))
		FUNC2(cons->intr_handle);
	else {
		struct evtchn_send send = {
			.port = cons->evtchn
		};

		FUNC0(EVTCHNOP_send, &send);
	}
}