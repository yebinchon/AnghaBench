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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  qla_host_t ;

/* Variables and functions */
 int Q8_FLASH_SECTOR_SIZE ; 
 int /*<<< orphan*/  Q8_SEM2_UNLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(qla_host_t *ha, uint32_t off, uint32_t size)
{
	int rval = 0;
	uint32_t start;

	if (off & (Q8_FLASH_SECTOR_SIZE -1))
		return -1;

	if ((rval = FUNC3(ha)))
		goto qla_erase_flash_exit;

	if ((rval = FUNC2(ha)))
		goto qla_erase_flash_unlock_exit;

	if ((rval = FUNC5(ha)))
		goto qla_erase_flash_unlock_exit;

	for (start = off; start < (off + size); start = start + 0x10000) {
		if (FUNC0(ha, start)) {
			rval = -1;
			break;
		}
	}

	rval = FUNC1(ha);

qla_erase_flash_unlock_exit:
	FUNC4(ha, Q8_SEM2_UNLOCK);

qla_erase_flash_exit:
	return (rval);
}