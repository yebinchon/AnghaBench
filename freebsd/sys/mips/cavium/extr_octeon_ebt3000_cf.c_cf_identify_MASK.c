#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ base; scalar_t__ width; } ;
struct TYPE_5__ {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cvmx_mio_boot_reg_cfgx_t ;
struct TYPE_6__ {scalar_t__ board_type; scalar_t__ compact_flash_common_base_addr; scalar_t__ compact_flash_attribute_base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
#define  CF_16 130 
#define  CF_8 129 
#define  CF_TRUE_IDE_8 128 
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_TRIES ; 
 int STATUS_BSY ; 
 int /*<<< orphan*/  TF_STATUS ; 
 int /*<<< orphan*/  WAIT_DELAY ; 
 int /*<<< orphan*/  base_addr ; 
 size_t bus_type ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char** cf_type ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void FUNC9 (driver_t *drv, device_t parent)
{
	int bus_region;
	int count = 0;
	cvmx_mio_boot_reg_cfgx_t cfg;
	uint64_t phys_base;
	
    	if (FUNC7()->board_type == CVMX_BOARD_TYPE_SIM)
		return;

	phys_base = FUNC7()->compact_flash_common_base_addr;
	if (phys_base == 0)
		return;
	base_addr = FUNC5(phys_base);

        for (bus_region = 0; bus_region < 8; bus_region++)
        {
                cfg.u64 = FUNC6(FUNC1(bus_region));
                if (cfg.s.base == phys_base >> 16)
                {
			if (FUNC7()->compact_flash_attribute_base_addr == 0)
				bus_type = CF_TRUE_IDE_8;
			else
				bus_type = (cfg.s.width) ? CF_16 : CF_8;
                        FUNC8("Compact flash found in bootbus region %d (%s).\n", bus_region, cf_type[bus_type]);
                        break;
                }
        }

	switch (bus_type)
	{
	case CF_8:
	case CF_TRUE_IDE_8:
		/* Check if CF is inserted */
		while (FUNC4(TF_STATUS) & STATUS_BSY) {
			if ((count++) == NR_TRIES ) {
				FUNC8("Compact Flash not present\n");
				return;
                	}
			FUNC2(WAIT_DELAY);
        	}
		break;
	case CF_16:
	default:
		/* Check if CF is inserted */
		while (FUNC3(TF_STATUS) & STATUS_BSY) {
			if ((count++) == NR_TRIES ) {
				FUNC8("Compact Flash not present\n");
				return;
                	}
			FUNC2(WAIT_DELAY);
        	}
		break;
	}

	FUNC0(parent, 0, "cf", 0);
}