#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {unsigned int sf_size; unsigned int sf_nsec; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,...) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int EFBIG ; 
 unsigned int FLASH_CFG_MAX_SIZE ; 
 int SF_PAGE_SIZE ; 
 unsigned int SF_SEC_SIZE ; 
 int FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*,unsigned int,unsigned int) ; 
 int FUNC4 (struct adapter*,unsigned int,int,int /*<<< orphan*/  const*,int) ; 

int FUNC5(struct adapter *adap, const u8 *cfg_data, unsigned int size)
{
	int ret, i, n, cfg_addr;
	unsigned int addr;
	unsigned int flash_cfg_start_sec;
	unsigned int sf_sec_size = adap->params.sf_size / adap->params.sf_nsec;

	cfg_addr = FUNC2(adap);
	if (cfg_addr < 0)
		return cfg_addr;

	addr = cfg_addr;
	flash_cfg_start_sec = addr / SF_SEC_SIZE;

	if (size > FLASH_CFG_MAX_SIZE) {
		FUNC0(adap, "cfg file too large, max is %u bytes\n",
		       FLASH_CFG_MAX_SIZE);
		return -EFBIG;
	}

	i = FUNC1(FLASH_CFG_MAX_SIZE,	/* # of sectors spanned */
			 sf_sec_size);
	ret = FUNC3(adap, flash_cfg_start_sec,
				     flash_cfg_start_sec + i - 1);
	/*
	 * If size == 0 then we're simply erasing the FLASH sectors associated
	 * with the on-adapter Firmware Configuration File.
	 */
	if (ret || size == 0)
		goto out;

	/* this will write to the flash up to SF_PAGE_SIZE at a time */
	for (i = 0; i< size; i+= SF_PAGE_SIZE) {
		if ( (size - i) <  SF_PAGE_SIZE)
			n = size - i;
		else
			n = SF_PAGE_SIZE;
		ret = FUNC4(adap, addr, n, cfg_data, 1);
		if (ret)
			goto out;

		addr += SF_PAGE_SIZE;
		cfg_data += SF_PAGE_SIZE;
	}

out:
	if (ret)
		FUNC0(adap, "config file %s failed %d\n",
		       (size == 0 ? "clear" : "download"), ret);
	return ret;
}