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
struct adapter {int /*<<< orphan*/  watchdog_events; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 struct adapter* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC0(ctx);

	/*
	 * Just count the event; iflib(4) will already trigger a
	 * sufficient reset of the controller.
	 */
	adapter->watchdog_events++;
}