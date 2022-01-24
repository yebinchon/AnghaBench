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
typedef  int u64 ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYS_EN ; 
 int /*<<< orphan*/  CMD_TIME_CLASS_D ; 
 int ENOMEM ; 
 int FUNC0 (struct mthca_dev*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,char*,int,int,int,char*) ; 

int FUNC2(struct mthca_dev *dev)
{
	u64 out;
	int ret;

	ret = FUNC0(dev, 0, &out, 0, 0, CMD_SYS_EN, CMD_TIME_CLASS_D);

	if (ret == -ENOMEM)
		FUNC1(dev, "SYS_EN DDR error: syn=%x, sock=%d, "
			   "sladdr=%d, SPD source=%s\n",
			   (int) (out >> 6) & 0xf, (int) (out >> 4) & 3,
			   (int) (out >> 1) & 7, (int) out & 1 ? "NVMEM" : "DIMM");

	return ret;
}