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
typedef  size_t u_int ;
struct TYPE_3__ {size_t num_cfg_blocks; } ;
struct siba_devinfo {TYPE_2__** cfg_res; TYPE_1__ core_id; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct siba_devinfo *dinfo) {
	for (u_int i = 0; i < dinfo->core_id.num_cfg_blocks; i++) {
		if (dinfo->cfg_res[i] == NULL)
			continue;

		FUNC0(FUNC1(dev), dev,
		    SYS_RES_MEMORY, dinfo->cfg_res[i]->res);
	}
}