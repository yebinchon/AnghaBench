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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct dmar_unit {int hw_cap; int hw_ecap; int /*<<< orphan*/  hw_ver; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  Segment; scalar_t__ Address; } ;
typedef  TYPE_1__ ACPI_DMAR_HARDWARE_UNIT ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int DMAR_CAP_PSI ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void
FUNC13(device_t dev, struct dmar_unit *unit,
    ACPI_DMAR_HARDWARE_UNIT *dmaru)
{
	uint32_t caphi, ecaphi;

	FUNC11(dev, "regs@0x%08jx, ver=%d.%d, seg=%d, flags=<%b>\n",
	    (uintmax_t)dmaru->Address, FUNC9(unit->hw_ver),
	    FUNC10(unit->hw_ver), dmaru->Segment,
	    dmaru->Flags, "\020\001INCLUDE_ALL_PCI");
	caphi = unit->hw_cap >> 32;
	FUNC11(dev, "cap=%b,", (u_int)unit->hw_cap,
	    "\020\004AFL\005WBF\006PLMR\007PHMR\010CM\027ZLR\030ISOCH");
	FUNC12("%b, ", caphi, "\020\010PSI\027DWD\030DRD\031FL1GP\034PSI");
	FUNC12("ndoms=%d, sagaw=%d, mgaw=%d, fro=%d, nfr=%d, superp=%d",
	    FUNC3(unit->hw_cap), FUNC5(unit->hw_cap),
	    FUNC2(unit->hw_cap), FUNC0(unit->hw_cap),
	    FUNC4(unit->hw_cap), FUNC6(unit->hw_cap));
	if ((unit->hw_cap & DMAR_CAP_PSI) != 0)
		FUNC12(", mamv=%d", FUNC1(unit->hw_cap));
	FUNC12("\n");
	ecaphi = unit->hw_ecap >> 32;
	FUNC11(dev, "ecap=%b,", (u_int)unit->hw_ecap,
	    "\020\001C\002QI\003DI\004IR\005EIM\007PT\010SC\031ECS\032MTS"
	    "\033NEST\034DIS\035PASID\036PRS\037ERS\040SRS");
	FUNC12("%b, ", ecaphi, "\020\002NWFS\003EAFS");
	FUNC12("mhmw=%d, iro=%d\n", FUNC8(unit->hw_ecap),
	    FUNC7(unit->hw_ecap));
}