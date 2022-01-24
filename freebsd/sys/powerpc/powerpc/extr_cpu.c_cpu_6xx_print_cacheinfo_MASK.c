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
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int register_t ;

/* Variables and functions */
 int HID0_DCE ; 
 int HID0_ICE ; 
#define  IBM750FX 134 
 int L2CR_L2E ; 
 int L2CR_L2PE ; 
 int L2CR_L2SIZ ; 
 int L2CR_L2WT ; 
#define  L2SIZ_1M 133 
#define  L2SIZ_256K 132 
#define  L2SIZ_512K 131 
 int L3CR_L3E ; 
 int L3CR_L3SIZ ; 
#define  MPC7450 130 
#define  MPC7455 129 
#define  MPC7457 128 
 int /*<<< orphan*/  SPR_HID0 ; 
 int /*<<< orphan*/  SPR_L2CR ; 
 int /*<<< orphan*/  SPR_L3CR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(u_int cpuid, uint16_t vers)
{
	register_t hid;

	hid = FUNC0(SPR_HID0);
	FUNC1("cpu%u: ", cpuid);
	FUNC1("L1 I-cache %sabled, ", (hid & HID0_ICE) ? "en" : "dis");
	FUNC1("L1 D-cache %sabled\n", (hid & HID0_DCE) ? "en" : "dis");

	FUNC1("cpu%u: ", cpuid);
  	if (FUNC0(SPR_L2CR) & L2CR_L2E) {
		switch (vers) {
		case MPC7450:
		case MPC7455:
		case MPC7457:
			FUNC1("256KB L2 cache, ");
			if (FUNC0(SPR_L3CR) & L3CR_L3E)
				FUNC1("%cMB L3 backside cache",
				    FUNC0(SPR_L3CR) & L3CR_L3SIZ ? '2' : '1');
			else
				FUNC1("L3 cache disabled");
			FUNC1("\n");
			break;
		case IBM750FX:
			FUNC1("512KB L2 cache\n");
			break; 
		default:
			switch (FUNC0(SPR_L2CR) & L2CR_L2SIZ) {
			case L2SIZ_256K:
				FUNC1("256KB ");
				break;
			case L2SIZ_512K:
				FUNC1("512KB ");
				break;
			case L2SIZ_1M:
				FUNC1("1MB ");
				break;
			}
			FUNC1("write-%s", (FUNC0(SPR_L2CR) & L2CR_L2WT)
			    ? "through" : "back");
			if (FUNC0(SPR_L2CR) & L2CR_L2PE)
				FUNC1(", with parity");
			FUNC1(" backside cache\n");
			break;
		}
	} else
		FUNC1("L2 cache disabled\n");
}