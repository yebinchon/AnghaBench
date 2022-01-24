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
struct ISCI_CONTROLLER {int /*<<< orphan*/  scif_controller_handle; } ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void *controller_handle)
{
	struct ISCI_CONTROLLER *controller =
	    (struct ISCI_CONTROLLER *)controller_handle;
	SCI_CONTROLLER_HANDLE_T scif_controller_handle =
	    controller->scif_controller_handle;

	FUNC3(scif_controller_handle,
	    FUNC2(scif_controller_handle));

	FUNC0(
	    FUNC1(controller->scif_controller_handle));
}