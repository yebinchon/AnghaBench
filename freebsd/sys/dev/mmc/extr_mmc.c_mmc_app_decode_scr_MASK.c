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
struct mmc_scr {void* bus_widths; void* sda_vsn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_scr*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

__attribute__((used)) static void
FUNC3(uint32_t *raw_scr, struct mmc_scr *scr)
{
	unsigned int scr_struct;

	FUNC0(scr, 0, sizeof(*scr));

	scr_struct = FUNC1(raw_scr, 64, 60, 4);
	if (scr_struct != 0) {
		FUNC2("Unrecognised SCR structure version %d\n",
		    scr_struct);
		return;
	}
	scr->sda_vsn = FUNC1(raw_scr, 64, 56, 4);
	scr->bus_widths = FUNC1(raw_scr, 64, 48, 4);
}