#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {scalar_t__ vpd_reg; } ;
struct TYPE_5__ {TYPE_1__ vpd; } ;
typedef  TYPE_2__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ PCIR_VPD_ADDR ; 
 scalar_t__ PCIR_VPD_DATA ; 
 int PCI_VPD_TIMEOUT ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t pcib, pcicfgregs *cfg, int reg, uint32_t *data)
{
	int count = PCI_VPD_TIMEOUT;

	FUNC1((reg & 3) == 0, ("VPD register must by 4 byte aligned"));

	FUNC3(cfg->vpd.vpd_reg + PCIR_VPD_ADDR, reg, 2);

	while ((FUNC2(cfg->vpd.vpd_reg + PCIR_VPD_ADDR, 2) & 0x8000) != 0x8000) {
		if (--count < 0)
			return (ENXIO);
		FUNC0(1);	/* limit looping */
	}
	*data = (FUNC2(cfg->vpd.vpd_reg + PCIR_VPD_DATA, 4));

	return (0);
}