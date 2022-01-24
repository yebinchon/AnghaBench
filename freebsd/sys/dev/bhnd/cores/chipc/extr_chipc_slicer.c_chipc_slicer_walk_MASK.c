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
struct resource {int dummy; } ;
struct flash_slice {int size; char* label; int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
#define  CFE_MAGIC 130 
#define  NVRAM_MAGIC 129 
#define  TRX_MAGIC 128 
 int FUNC3 (struct resource*,int) ; 
 int FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct resource *res,
    struct flash_slice *slices, int *nslices)
{
	uint32_t	 fw_len;
	uint32_t	 fs_ofs;
	uint32_t	 val;
	uint32_t	 ofs_trx;
	int		 flash_size;

	*nslices = 0;

	flash_size = FUNC4(res);
	ofs_trx = flash_size;

	FUNC1(dev, "slicer: scanning memory [%x bytes] for headers...",
	    flash_size);

	/* Find FW header in flash memory with step=128Kb (0x1000) */
	for(uint32_t ofs = 0; ofs < flash_size; ofs+= 0x1000){
		val = FUNC3(res, ofs);
		switch (val) {
		case TRX_MAGIC:
			/* check for second TRX */
			if (ofs_trx < ofs) {
				FUNC1(dev, "stop on 2nd TRX: %x", ofs);
				break;
			}

			FUNC0("TRX found: %x", ofs);
			ofs_trx = ofs;
			/* read last offset of TRX header */
			fs_ofs = FUNC3(res, ofs + 24);
			FUNC0("FS offset: %x", fs_ofs);

			/*
			 * GEOM IO will panic if offset is not aligned
			 * on sector size, i.e. 512 bytes
			 */
			if (fs_ofs % 0x200 != 0) {
				FUNC2("WARNING! filesystem offset should be"
				    " aligned on sector size (%d bytes)", 0x200);
				FUNC2("ignoring TRX firmware image");
				break;
			}

			slices[*nslices].base = ofs + fs_ofs;
			//XXX: fully sized? any other partition?
			fw_len = FUNC3(res, ofs + 4);
			slices[*nslices].size = fw_len - fs_ofs;
			slices[*nslices].label = "rootfs";
			*nslices += 1;
			break;
		case CFE_MAGIC:
			FUNC0("CFE found: %x", ofs);
			break;
		case NVRAM_MAGIC:
			FUNC0("NVRAM found: %x", ofs);
			break;
		default:
			break;
		}
	}

	FUNC0("slicer: done");
	return (0);
}