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
struct unin_chip_reg {scalar_t__ mr_size; scalar_t__ mr_base; } ;
struct unin_chip_devinfo {int /*<<< orphan*/  udi_resources; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(phandle_t devnode, struct unin_chip_devinfo *dinfo)
{
	struct	unin_chip_reg *reg;
	int	i, nreg;

	nreg = FUNC0(devnode, "reg", sizeof(*reg), (void **)&reg);
	if (nreg == -1)
		return;

	for (i = 0; i < nreg; i++) {
		FUNC1(&dinfo->udi_resources, SYS_RES_MEMORY, i,
				  reg[i].mr_base,
				  reg[i].mr_base + reg[i].mr_size,
				  reg[i].mr_size);
	}
}