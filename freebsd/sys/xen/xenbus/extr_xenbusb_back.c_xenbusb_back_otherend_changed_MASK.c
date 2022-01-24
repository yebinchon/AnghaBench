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
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ XenbusStateClosed ; 
 int /*<<< orphan*/  XenbusStateInitWait ; 
 int XenbusStateInitialising ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(device_t bus, device_t child,
			      enum xenbus_state peer_state)
{
	/* Perform default processing of state. */
	FUNC3(bus, child, peer_state);

	/*
	 * "Online" devices are never fully detached in the
	 * newbus sense.  Only the front<->back connection is
	 * torn down.  If the front returns to the initialising
	 * state after closing a previous connection, signal
	 * our willingness to reconnect and that all necessary
	 * XenStore data for feature negotiation is present.
	 */
	if (peer_state == XenbusStateInitialising
	 && FUNC0(child) != 0
	 && FUNC1(child) == XenbusStateClosed)
		FUNC2(child, XenbusStateInitWait);
}