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
struct cudbg_flash_sec_info {int /*<<< orphan*/  sec_bitmap; } ;

/* Variables and functions */
 scalar_t__ CUDBG_START_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
void FUNC2(struct cudbg_flash_sec_info *sec_info,
    int sector_nu, int avail)
{
	sector_nu -= CUDBG_START_SEC;
	if (avail)
		FUNC1(sec_info->sec_bitmap, sector_nu);
	else
		FUNC0(sec_info->sec_bitmap, sector_nu);
}