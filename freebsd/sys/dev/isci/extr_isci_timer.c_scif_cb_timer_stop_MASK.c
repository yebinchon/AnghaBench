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
struct ISCI_TIMER {int /*<<< orphan*/  callout; int /*<<< orphan*/  is_started; } ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,void*) ; 

void
FUNC2(SCI_CONTROLLER_HANDLE_T controller, void *timer)
{
	struct ISCI_TIMER *isci_timer = (struct ISCI_TIMER *)timer;

	FUNC1(3, "TIMER", "stop %p\n", timer);
	isci_timer->is_started = FALSE;
	FUNC0(&isci_timer->callout);
}