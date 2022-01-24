#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_7__ {int cvmx_desc_vaddr; } ;
typedef  TYPE_1__ octeon_boot_descriptor_t ;
struct TYPE_8__ {int major_version; int /*<<< orphan*/  board_serial_number; int /*<<< orphan*/  led_display_base_addr; int /*<<< orphan*/  core_mask; int /*<<< orphan*/  compact_flash_attribute_base_addr; int /*<<< orphan*/  compact_flash_common_base_addr; int /*<<< orphan*/  mac_addr_count; int /*<<< orphan*/  mac_addr_base; int /*<<< orphan*/  eclock_hz; int /*<<< orphan*/  board_rev_minor; int /*<<< orphan*/  board_rev_major; int /*<<< orphan*/  board_type; int /*<<< orphan*/  phy_mem_desc_addr; scalar_t__ minor_version; } ;
typedef  TYPE_2__ cvmx_bootinfo_t ;
struct TYPE_9__ {int /*<<< orphan*/  board_serial_number; int /*<<< orphan*/  led_display_base_addr; int /*<<< orphan*/  core_mask; int /*<<< orphan*/  compact_flash_attribute_base_addr; int /*<<< orphan*/  compact_flash_common_base_addr; int /*<<< orphan*/  mac_addr_count; int /*<<< orphan*/  mac_addr_base; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 TYPE_5__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static cvmx_bootinfo_t *
FUNC5(octeon_boot_descriptor_t *app_desc_ptr)
{
	cvmx_bootinfo_t *octeon_bootinfo;

	/* XXX Why is 0x00000000ffffffffULL a bad value?  */
	if (app_desc_ptr->cvmx_desc_vaddr == 0 ||
	    app_desc_ptr->cvmx_desc_vaddr == 0xfffffffful) {
            	FUNC1("Bad octeon_bootinfo %#jx\n",
		    (uintmax_t)app_desc_ptr->cvmx_desc_vaddr);
		return (NULL);
	}

    	octeon_bootinfo = FUNC0(app_desc_ptr->cvmx_desc_vaddr);
        if (octeon_bootinfo->major_version != 1) {
            	FUNC1("Incompatible CVMX descriptor from bootloader: %d.%d %p\n",
		    (int) octeon_bootinfo->major_version,
		    (int) octeon_bootinfo->minor_version, octeon_bootinfo);
		return (NULL);
	}

	FUNC3(octeon_bootinfo->phy_mem_desc_addr,
					octeon_bootinfo->board_type,
					octeon_bootinfo->board_rev_major,
					octeon_bootinfo->board_rev_minor,
					octeon_bootinfo->eclock_hz);
	FUNC4(FUNC2()->mac_addr_base,
	       octeon_bootinfo->mac_addr_base, 6);
	FUNC2()->mac_addr_count = octeon_bootinfo->mac_addr_count;
	FUNC2()->compact_flash_common_base_addr = 
		octeon_bootinfo->compact_flash_common_base_addr;
	FUNC2()->compact_flash_attribute_base_addr = 
		octeon_bootinfo->compact_flash_attribute_base_addr;
	FUNC2()->core_mask = octeon_bootinfo->core_mask;
	FUNC2()->led_display_base_addr =
		octeon_bootinfo->led_display_base_addr;
	FUNC4(FUNC2()->board_serial_number,
	       octeon_bootinfo->board_serial_number,
	       sizeof FUNC2()->board_serial_number);
	return (octeon_bootinfo);
}