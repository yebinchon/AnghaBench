#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC2(void *ecore_dev, int cap)
{
	int		reg;
	qlnx_host_t	*ha;

	ha = ecore_dev;

	if (FUNC1(ha->pci_dev, PCIY_EXPRESS, &reg) == 0)
		return reg;
	else {
		FUNC0(ha, "failed\n");
		return 0;
	}
}