#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* hwd; } ;
struct TYPE_3__ {scalar_t__ hwd_start_signal_barrier; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 scalar_t__ SIG_ERR ; 
 size_t curthread ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* statep ; 

__attribute__((used)) static void
FUNC3(void)
{

	/* Wait for EINTR. */
	if (FUNC1(SIGHUP, signal_handler) == SIG_ERR)
		FUNC0(-1, "signal");
	while (1) {
		FUNC2(100);
		if (statep->hwd[curthread].hwd_start_signal_barrier)
			break;
	}
}