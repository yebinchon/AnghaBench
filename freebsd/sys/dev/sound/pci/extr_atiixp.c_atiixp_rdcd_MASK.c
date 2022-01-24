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
struct atiixp_info {int codec_idx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_REG_PHYS_IN_ADDR ; 
 int ATI_REG_PHYS_IN_DATA_SHIFT ; 
 int ATI_REG_PHYS_IN_READ_FLAG ; 
 int /*<<< orphan*/  ATI_REG_PHYS_OUT_ADDR ; 
 int ATI_REG_PHYS_OUT_ADDR_EN ; 
 int ATI_REG_PHYS_OUT_ADDR_SHIFT ; 
 int ATI_REG_PHYS_OUT_RW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct atiixp_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct atiixp_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *devinfo, int reg)
{
	struct atiixp_info *sc = devinfo;
	uint32_t data;
	int timeout;

	if (FUNC2(sc))
		return (-1);

	data = (reg << ATI_REG_PHYS_OUT_ADDR_SHIFT) |
	    ATI_REG_PHYS_OUT_ADDR_EN | ATI_REG_PHYS_OUT_RW | sc->codec_idx;

	FUNC3(sc, ATI_REG_PHYS_OUT_ADDR, data);

	if (FUNC2(sc))
		return (-1);

	timeout = 500;
	do {
		data = FUNC1(sc, ATI_REG_PHYS_IN_ADDR);
		if (data & ATI_REG_PHYS_IN_READ_FLAG)
			return (data >> ATI_REG_PHYS_IN_DATA_SHIFT);
		FUNC0(1);
	} while (--timeout);

	if (reg < 0x7c)
		FUNC4(sc->dev, "codec read timeout! (reg 0x%x)\n", reg);

	return (-1);
}