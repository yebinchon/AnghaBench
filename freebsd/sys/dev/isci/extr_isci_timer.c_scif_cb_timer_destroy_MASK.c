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
struct ISCI_TIMER {int dummy; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  timer_pool; } ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ISCI_TIMER*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

void
FUNC4(SCI_CONTROLLER_HANDLE_T scif_controller,
    void *timer_handle)
{
	struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
	    FUNC1(scif_controller);

	FUNC3(scif_controller, timer_handle);
	FUNC2(isci_controller->timer_pool, (struct ISCI_TIMER *)timer_handle);

	FUNC0(3, "TIMER", "destroy %p\n", timer_handle);
}