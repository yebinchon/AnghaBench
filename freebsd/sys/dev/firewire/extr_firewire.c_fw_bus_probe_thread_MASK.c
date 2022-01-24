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
struct firewire_comm {scalar_t__ status; int /*<<< orphan*/  wait_lock; } ;

/* Variables and functions */
 scalar_t__ FWBUSDETACH ; 
 scalar_t__ FWBUSEXPDONE ; 
 scalar_t__ FWBUSEXPLORE ; 
 int PCATCH ; 
 int PWAIT ; 
 scalar_t__ firewire_debug ; 
 int /*<<< orphan*/  FUNC0 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC1 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct firewire_comm *fc;

	fc = arg;

	FUNC4(&fc->wait_lock);
	while (fc->status != FWBUSDETACH) {
		if (fc->status == FWBUSEXPLORE) {
			FUNC5(&fc->wait_lock);
			FUNC1(fc);
			fc->status = FWBUSEXPDONE;
			if (firewire_debug)
				FUNC6("bus_explore done\n");
			FUNC0(fc);
			FUNC4(&fc->wait_lock);
		}
		FUNC3((void *)fc, &fc->wait_lock, PWAIT|PCATCH, "-", 0);
	}
	FUNC5(&fc->wait_lock);
	FUNC2(0);
}