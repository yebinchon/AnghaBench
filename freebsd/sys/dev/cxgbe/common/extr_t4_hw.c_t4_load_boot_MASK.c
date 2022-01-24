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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  const u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {unsigned int sf_size; unsigned int sf_nsec; } ;
struct adapter {TYPE_1__ params; } ;
struct TYPE_5__ {scalar_t__ device_id; scalar_t__ vendor_id; scalar_t__ signature; } ;
typedef  TYPE_2__ pcir_data_t ;
struct TYPE_6__ {scalar_t__ signature; scalar_t__ pcir_offset; } ;
typedef  TYPE_3__ pci_exp_rom_header_t ;

/* Variables and functions */
 unsigned int BOOT_MAX_SIZE ; 
 unsigned int BOOT_MIN_SIZE ; 
 int BOOT_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,...) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int EFBIG ; 
 int EINVAL ; 
 unsigned int FLASH_FW_START ; 
 int FLASH_FW_START_SEC ; 
 scalar_t__ PCIR_SIGNATURE ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 scalar_t__ SF_PAGE_SIZE ; 
 int VENDOR_ID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/  const*) ; 
 int FUNC5 (struct adapter*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct adapter*,unsigned int,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC8(struct adapter *adap, u8 *boot_data,
		 unsigned int boot_addr, unsigned int size)
{
	pci_exp_rom_header_t *header;
	int pcir_offset ;
	pcir_data_t *pcir_header;
	int ret, addr;
	uint16_t device_id;
	unsigned int i;
	unsigned int boot_sector = (boot_addr * 1024 );
	unsigned int sf_sec_size = adap->params.sf_size / adap->params.sf_nsec;

	/*
	 * Make sure the boot image does not encroach on the firmware region
	 */
	if ((boot_sector + size) >> 16 > FLASH_FW_START_SEC) {
		FUNC0(adap, "boot image encroaching on firmware region\n");
		return -EFBIG;
	}

	/*
	 * The boot sector is comprised of the Expansion-ROM boot, iSCSI boot,
	 * and Boot configuration data sections. These 3 boot sections span
	 * sectors 0 to 7 in flash and live right before the FW image location.
	 */
	i = FUNC1(size ? size : FLASH_FW_START,
			sf_sec_size);
	ret = FUNC5(adap, boot_sector >> 16,
				     (boot_sector >> 16) + i - 1);

	/*
	 * If size == 0 then we're simply erasing the FLASH sectors associated
	 * with the on-adapter option ROM file
	 */
	if (ret || (size == 0))
		goto out;

	/* Get boot header */
	header = (pci_exp_rom_header_t *)boot_data;
	pcir_offset = FUNC2(*(u16 *)header->pcir_offset);
	/* PCIR Data Structure */
	pcir_header = (pcir_data_t *) &boot_data[pcir_offset];

	/*
	 * Perform some primitive sanity testing to avoid accidentally
	 * writing garbage over the boot sectors.  We ought to check for
	 * more but it's not worth it for now ...
	 */
	if (size < BOOT_MIN_SIZE || size > BOOT_MAX_SIZE) {
		FUNC0(adap, "boot image too small/large\n");
		return -EFBIG;
	}

#ifndef CHELSIO_T4_DIAGS
	/*
	 * Check BOOT ROM header signature
	 */
	if (FUNC2(*(u16*)header->signature) != BOOT_SIGNATURE ) {
		FUNC0(adap, "Boot image missing signature\n");
		return -EINVAL;
	}

	/*
	 * Check PCI header signature
	 */
	if (FUNC3(*(u32*)pcir_header->signature) != PCIR_SIGNATURE) {
		FUNC0(adap, "PCI header missing signature\n");
		return -EINVAL;
	}

	/*
	 * Check Vendor ID matches Chelsio ID
	 */
	if (FUNC2(*(u16*)pcir_header->vendor_id) != VENDOR_ID) {
		FUNC0(adap, "Vendor ID missing signature\n");
		return -EINVAL;
	}
#endif

	/*
	 * Retrieve adapter's device ID
	 */
	FUNC6(adap, PCI_DEVICE_ID, &device_id);
	/* Want to deal with PF 0 so I strip off PF 4 indicator */
	device_id = device_id & 0xf0ff;

	/*
	 * Check PCIE Device ID
	 */
	if (FUNC2(*(u16*)pcir_header->device_id) != device_id) {
		/*
		 * Change the device ID in the Boot BIOS image to match
		 * the Device ID of the current adapter.
		 */
		FUNC4(device_id, boot_data);
	}

	/*
	 * Skip over the first SF_PAGE_SIZE worth of data and write it after
	 * we finish copying the rest of the boot image. This will ensure
	 * that the BIOS boot header will only be written if the boot image
	 * was written in full.
	 */
	addr = boot_sector;
	for (size -= SF_PAGE_SIZE; size; size -= SF_PAGE_SIZE) {
		addr += SF_PAGE_SIZE;
		boot_data += SF_PAGE_SIZE;
		ret = FUNC7(adap, addr, SF_PAGE_SIZE, boot_data, 0);
		if (ret)
			goto out;
	}

	ret = FUNC7(adap, boot_sector, SF_PAGE_SIZE,
			     (const u8 *)header, 0);

out:
	if (ret)
		FUNC0(adap, "boot image download failed, error %d\n", ret);
	return ret;
}