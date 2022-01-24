#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ register_t ;
struct TYPE_4__ {int desc_version; } ;
typedef  TYPE_1__ octeon_boot_descriptor_t ;
typedef  int /*<<< orphan*/  cvmx_bootinfo_t ;
struct TYPE_5__ {scalar_t__ led_display_base_addr; scalar_t__ board_type; int board_rev_major; scalar_t__ phy_mem_desc_addr; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_EBT3000 ; 
 scalar_t__ MAX_APP_DESC_ADDR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(register_t ptr)
{
	octeon_boot_descriptor_t *app_desc_ptr;
	cvmx_bootinfo_t *octeon_bootinfo;

	if (ptr == 0 || ptr >= MAX_APP_DESC_ADDR) {
		FUNC2("app descriptor passed at invalid address %#jx\n",
		    (uintmax_t)ptr);
		FUNC7();
	}

	app_desc_ptr = (octeon_boot_descriptor_t *)(intptr_t)ptr;
	if (app_desc_ptr->desc_version < 6) {
		FUNC2("Your boot code is too old to be supported.\n");
		FUNC7();
	}
	octeon_bootinfo = FUNC6(app_desc_ptr);
	if (octeon_bootinfo == NULL) {
		FUNC2("Could not parse boot descriptor.\n");
		FUNC7();
	}

	if (FUNC3()->led_display_base_addr != 0) {
		/*
		 * Revision 1.x of the EBT3000 only supports 4 characters, but
		 * other devices support 8.
		 */
		if (FUNC3()->board_type == CVMX_BOARD_TYPE_EBT3000 &&
		    FUNC3()->board_rev_major == 1)
			FUNC4("FBSD");
		else
			FUNC4("FreeBSD!");
	}

	if (FUNC3()->phy_mem_desc_addr == (uint64_t)0) {
		FUNC2("Your boot loader did not supply a memory descriptor.\n");
		FUNC7();
	}
	FUNC1(FUNC3()->phy_mem_desc_addr);

	FUNC5();

	FUNC0();
}