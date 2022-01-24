#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  unsigned int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FDD ; 
#define  SLI4_ASIC_TYPE_BE3 129 
#define  SLI4_ASIC_TYPE_SKYHAWK 128 
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ; 
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ; 
 unsigned int SLI4_PHYDEV_CONTROL_DD ; 
 unsigned int SLI4_PHYDEV_CONTROL_FRST ; 
 int /*<<< orphan*/  SLI4_REG_PHYSDEV_CONTROL ; 
 int /*<<< orphan*/  SLI4_REG_SLIPORT_CONTROL ; 
 int /*<<< orphan*/  SLI4_REG_SW_UE_CSR1 ; 
 int /*<<< orphan*/  SLI4_REG_SW_UE_CSR2 ; 
 unsigned int SLI4_SLIPORT_CONTROL_FDD ; 
 unsigned int SLI4_SLIPORT_CONTROL_IP ; 
 int /*<<< orphan*/  SLI4_SW_UE_REG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 

int32_t FUNC6(sli4_t *sli4, uint8_t dump)
{
#define FDD 2
	if (SLI4_IF_TYPE_BE3_SKH_PF == FUNC4(sli4)) {
		switch(FUNC3(sli4)) {
		case SLI4_ASIC_TYPE_BE3: {
			FUNC5(sli4, SLI4_REG_SW_UE_CSR1, 0xffffffff);
			FUNC5(sli4, SLI4_REG_SW_UE_CSR2, 0);
			break;
		}
		case SLI4_ASIC_TYPE_SKYHAWK: {
			uint32_t value;
			value = FUNC0(sli4->os, SLI4_SW_UE_REG);
			FUNC1(sli4->os, SLI4_SW_UE_REG, (value | (1U << 24)));
			break;
		}
		default:
			FUNC2(sli4->os, "invalid asic type %d\n", FUNC3(sli4));
			return -1;
		}
	} else if (SLI4_IF_TYPE_LANCER_FC_ETH == FUNC4(sli4)) {	
		if (dump == FDD) {
			FUNC5(sli4, SLI4_REG_SLIPORT_CONTROL, SLI4_SLIPORT_CONTROL_FDD | SLI4_SLIPORT_CONTROL_IP);
		} else {
			uint32_t value = SLI4_PHYDEV_CONTROL_FRST;
			if (dump == 1) {
				value |= SLI4_PHYDEV_CONTROL_DD;
			}
			FUNC5(sli4, SLI4_REG_PHYSDEV_CONTROL, value);
		}
	} else {
		FUNC2(sli4->os, "invalid iftype=%d\n", FUNC4(sli4));
		return -1;
	}
	return 0;
}