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
typedef  int uint32_t ;
struct card_info {int /*<<< orphan*/  num_funcs; TYPE_1__* f; } ;
struct cam_device {int dummy; } ;
struct TYPE_2__ {int man_id; int prod_id; int max_block_size; } ;

/* Variables and functions */
 int SD_IO_FBR_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct card_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_device*,int,int,TYPE_1__*) ; 
 int FUNC4 (struct cam_device*) ; 
 int FUNC5 (struct cam_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC6(struct cam_device *dev, struct card_info *ci) {
	uint32_t cis_addr;
	uint32_t fbr_addr;
	int ret;

	cis_addr = FUNC4(dev);

	FUNC1(ci, 0, sizeof(struct card_info));
	FUNC3(dev, 0, cis_addr, &ci->f[0]);
	FUNC2("F0: Vendor 0x%04X product 0x%04X max block size %d bytes\n",
	       ci->f[0].man_id, ci->f[0].prod_id, ci->f[0].max_block_size);
	for (int i = 1; i <= 7; i++) {
		fbr_addr = SD_IO_FBR_START * i + 0x9;
		cis_addr =  FUNC5(dev, 0, fbr_addr++, &ret);FUNC0(ret);
		cis_addr |= FUNC5(dev, 0, fbr_addr++, &ret) << 8;
		cis_addr |= FUNC5(dev, 0, fbr_addr++, &ret) << 16;
		FUNC3(dev, i, cis_addr, &ci->f[i]);
		FUNC2("F%d: Vendor 0x%04X product 0x%04X max block size %d bytes\n",
		       i, ci->f[i].man_id, ci->f[i].prod_id, ci->f[i].max_block_size);
		if (ci->f[i].man_id == 0) {
			FUNC2("F%d doesn't exist\n", i);
			break;
		}
		ci->num_funcs++;
	}
}