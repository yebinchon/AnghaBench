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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct brcmf_sdio_dev {scalar_t__ state; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ BRCMF_SDIOD_NOMEDIUM ; 
 int ENOMEDIUM ; 
 int REG_F0_REG_MASK ; 
 int SBSDIO_FUNC1_SLEEPCSR ; 
 int /*<<< orphan*/  SDIO ; 
 scalar_t__ SDIOH_API_ACCESS_RETRY_LIMIT ; 
 int /*<<< orphan*/  SDIO_FUNC_0 ; 
 int /*<<< orphan*/  SDIO_FUNC_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_sdio_dev*,scalar_t__) ; 
 int FUNC3 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct brcmf_sdio_dev *sdiodev, u32 addr, u8 regsz, void *data, bool write) {
	u8 func;
	s32 retry = 0;
	int ret;

	if (sdiodev->state == BRCMF_SDIOD_NOMEDIUM)
		return -ENOMEDIUM;

	/*
	 * figure out how to read the register based on address range
	 * 0x00 ~ 0x7FF: function 0 CCCR and FBR
	 * 0x10000 ~ 0x1FFFF: function 1 miscellaneous registers
	 * The rest: function 1 silicon backplane core registers
	 */
	if ((addr & ~REG_F0_REG_MASK) == 0)
		func = SDIO_FUNC_0;
	else
		func = SDIO_FUNC_1;

	do {
		if (!write)
			FUNC4(data, 0, regsz);
		/* for retry wait for 1 ms till bus get settled down */
		if (retry)
			FUNC5(1000, 2000);
		ret = FUNC3(sdiodev, func, addr, regsz,
					       data, write);
	} while (ret != 0 && ret != -ENOMEDIUM &&
		 retry++ < SDIOH_API_ACCESS_RETRY_LIMIT);

	if (ret == -ENOMEDIUM)
		FUNC2(sdiodev, BRCMF_SDIOD_NOMEDIUM);
	else if (ret != 0) {
		/*
		 * SleepCSR register access can fail when
		 * waking up the device so reduce this noise
		 * in the logs.
		 */
		if (addr != SBSDIO_FUNC1_SLEEPCSR)
			FUNC1("failed to %s data F%d@0x%05x, err: %d\n",
				  write ? "write" : "read", func, addr, ret);
		else
			FUNC0(SDIO, "failed to %s data F%d@0x%05x, err: %d\n",
				  write ? "write" : "read", func, addr, ret);
	}
	return ret;
}