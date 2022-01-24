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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
#define  CF_16 130 
#define  CF_8 129 
#define  CF_TRUE_IDE_8 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int STATUS_BSY ; 
 int /*<<< orphan*/  TF_COMMAND ; 
 int /*<<< orphan*/  TF_CYL_LSB ; 
 int /*<<< orphan*/  TF_CYL_MSB ; 
 int /*<<< orphan*/  TF_DRV_HEAD ; 
 int /*<<< orphan*/  TF_SECTOR_COUNT ; 
 int /*<<< orphan*/  TF_SECTOR_NUMBER ; 
 int /*<<< orphan*/  TF_STATUS ; 
 int /*<<< orphan*/  WAIT_DELAY ; 
 int bus_type ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6 (uint32_t lba, uint8_t cmd)
{
	switch (bus_type)
	{
	case CF_8:
	case CF_TRUE_IDE_8:
		while (FUNC2(TF_STATUS) & STATUS_BSY)
			FUNC0(WAIT_DELAY);
		FUNC3(TF_SECTOR_COUNT, 1);
		FUNC3(TF_SECTOR_NUMBER, lba & 0xff);
		FUNC3(TF_CYL_LSB, (lba >> 8) & 0xff);
		FUNC3(TF_CYL_MSB, (lba >> 16) & 0xff);
		FUNC3(TF_DRV_HEAD, ((lba >> 24) & 0xff) | 0xe0);
		FUNC3(TF_COMMAND, cmd);
		break;
	case CF_16:
	default:
		while (FUNC1(TF_STATUS) & STATUS_BSY)
			FUNC0(WAIT_DELAY);
		FUNC4(TF_SECTOR_COUNT, 1 | ((lba & 0xff) << 8));
		FUNC4(TF_CYL_LSB, ((lba >> 8) & 0xff) | (((lba >> 16) & 0xff) << 8));
		FUNC4(TF_DRV_HEAD, (((lba >> 24) & 0xff) | 0xe0) | (cmd << 8));
		break;
	}

	return (FUNC5());
}