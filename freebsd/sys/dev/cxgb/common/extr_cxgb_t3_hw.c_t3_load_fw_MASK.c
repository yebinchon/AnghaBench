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
typedef  int /*<<< orphan*/  csum ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int EFBIG ; 
 int EINVAL ; 
 int FW_FLASH_BOOT_ADDR ; 
 unsigned int FW_MAX_SIZE ; 
 unsigned int FW_MAX_SIZE_PRE8 ; 
 unsigned int FW_MIN_SIZE ; 
 int FW_VERS_ADDR ; 
 int FW_VERS_ADDR_PRE8 ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (int const) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const*,int) ; 

int FUNC6(adapter_t *adapter, const u8 *fw_data, unsigned int size)
{
	u32 version, csum, fw_version_addr;
	unsigned int i;
	const u32 *p = (const u32 *)fw_data;
	int ret, addr, fw_sector = FW_FLASH_BOOT_ADDR >> 16;

	if ((size & 3) || size < FW_MIN_SIZE)
		return -EINVAL;
	if (size - 8 > FW_MAX_SIZE)
		return -EFBIG;

	version = FUNC3(*(const u32 *)(fw_data + size - 8));
	if (FUNC1(version) < 8) {

		fw_version_addr = FW_VERS_ADDR_PRE8;

		if (size - 8 > FW_MAX_SIZE_PRE8)
			return -EFBIG;
	} else
		fw_version_addr = FW_VERS_ADDR;

	for (csum = 0, i = 0; i < size / sizeof(csum); i++)
		csum += FUNC3(p[i]);
	if (csum != 0xffffffff) {
		FUNC0(adapter, "corrupted firmware image, checksum %u\n",
		       csum);
		return -EINVAL;
	}

	ret = FUNC4(adapter, fw_sector, fw_sector);
	if (ret)
		goto out;

	size -= 8;  /* trim off version and checksum */
	for (addr = FW_FLASH_BOOT_ADDR; size; ) {
		unsigned int chunk_size = FUNC2(size, 256U);

		ret = FUNC5(adapter, addr, chunk_size, fw_data, 1);
		if (ret)
			goto out;

		addr += chunk_size;
		fw_data += chunk_size;
		size -= chunk_size;
	}

	ret = FUNC5(adapter, fw_version_addr, 4, fw_data, 1);
out:
	if (ret)
		FUNC0(adapter, "firmware download failed, error %d\n", ret);
	return ret;
}