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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {unsigned int length; scalar_t__ signature; } ;
typedef  TYPE_1__ boot_header_t ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int BOOT_FLASH_BOOT_ADDR ; 
 unsigned int BOOT_MAX_SIZE ; 
 unsigned int BOOT_MIN_SIZE ; 
 scalar_t__ BOOT_SIGNATURE ; 
 unsigned int BOOT_SIZE_INC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int EFBIG ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(adapter_t *adapter, u8 *boot_data, unsigned int size)
{
	boot_header_t *header = (boot_header_t *)boot_data;
	int ret;
	unsigned int addr;
	unsigned int boot_sector = BOOT_FLASH_BOOT_ADDR >> 16;
	unsigned int boot_end = (BOOT_FLASH_BOOT_ADDR + size - 1) >> 16;

	/*
	 * Perform some primitive sanity testing to avoid accidentally
	 * writing garbage over the boot sectors.  We ought to check for
	 * more but it's not worth it for now ...
	 */
	if (size < BOOT_MIN_SIZE || size > BOOT_MAX_SIZE) {
		FUNC0(adapter, "boot image too small/large\n");
		return -EFBIG;
	}
	if (FUNC1(*(u16*)header->signature) != BOOT_SIGNATURE) {
		FUNC0(adapter, "boot image missing signature\n");
		return -EINVAL;
	}
	if (header->length * BOOT_SIZE_INC != size) {
		FUNC0(adapter, "boot image header length != image length\n");
		return -EINVAL;
	}

	ret = FUNC3(adapter, boot_sector, boot_end);
	if (ret)
		goto out;

	for (addr = BOOT_FLASH_BOOT_ADDR; size; ) {
		unsigned int chunk_size = FUNC2(size, 256U);

		ret = FUNC4(adapter, addr, chunk_size, boot_data, 0);
		if (ret)
			goto out;

		addr += chunk_size;
		boot_data += chunk_size;
		size -= chunk_size;
	}

out:
	if (ret)
		FUNC0(adapter, "boot image download failed, error %d\n", ret);
	return ret;
}