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
typedef  int /*<<< orphan*/  uint32_t ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  scif_controller_handle; } ;
typedef  int /*<<< orphan*/ * SCI_PHY_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ISCI_CONTROLLER *controller, uint32_t phy_to_be_stopped)
{
	SCI_PHY_HANDLE_T phy_handle = NULL;

	FUNC0(
	    FUNC2(controller->scif_controller_handle),
	    phy_to_be_stopped, &phy_handle);

	FUNC1(phy_handle);
}