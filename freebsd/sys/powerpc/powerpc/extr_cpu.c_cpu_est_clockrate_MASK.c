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
typedef  int uint64_t ;
typedef  int uint16_t ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  cell_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ENXIO ; 
#define  IBM750FX 139 
#define  IBM970 138 
#define  IBM970FX 137 
#define  IBM970MP 136 
#define  MPC7400 135 
#define  MPC7410 134 
#define  MPC7447A 133 
#define  MPC7448 132 
#define  MPC7450 131 
#define  MPC7455 130 
#define  MPC7457 129 
#define  MPC750 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMC970N_CYCLES ; 
 int /*<<< orphan*/  PMCN_CYCLES ; 
 int PSL_EE ; 
 int /*<<< orphan*/  SPR_970MMCR0 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPR_970MMCR1 ; 
 int /*<<< orphan*/  SPR_970MMCRA ; 
 int /*<<< orphan*/  SPR_970PMC1 ; 
 int /*<<< orphan*/  SPR_MMCR0 ; 
 int /*<<< orphan*/  SPR_MMCR0_FC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPR_PMC1 ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int
FUNC14(int cpu_id, uint64_t *cps)
{
	uint16_t	vers;
	register_t	msr;
	phandle_t	cpu, dev, root;
	int		res  = 0;
	char		buf[8];

	vers = FUNC8() >> 16;
	msr = FUNC7();
	FUNC10(msr & ~PSL_EE);

	switch (vers) {
		case MPC7450:
		case MPC7455:
		case MPC7457:
		case MPC750:
		case IBM750FX:
		case MPC7400:
		case MPC7410:
		case MPC7447A:
		case MPC7448:
			FUNC11(SPR_MMCR0, SPR_MMCR0_FC);
			FUNC11(SPR_PMC1, 0);
			FUNC11(SPR_MMCR0, FUNC5(PMCN_CYCLES));
			FUNC0(1000);
			*cps = (FUNC9(SPR_PMC1) * 1000) + 4999;
			FUNC11(SPR_MMCR0, SPR_MMCR0_FC);

			FUNC10(msr);
			return (0);
		case IBM970:
		case IBM970FX:
		case IBM970MP:
			FUNC6();
			FUNC11(SPR_970MMCR0, SPR_MMCR0_FC);
			FUNC6();
			FUNC11(SPR_970MMCR1, 0);
			FUNC11(SPR_970MMCRA, 0);
			FUNC11(SPR_970PMC1, 0);
			FUNC11(SPR_970MMCR0,
			    FUNC4(PMC970N_CYCLES));
			FUNC6();
			FUNC0(1000);
			FUNC12();
			FUNC11(SPR_970MMCR0, SPR_MMCR0_FC);
			*cps = (FUNC9(SPR_970PMC1) * 1000) + 4999;

			FUNC10(msr);
			return (0);

		default:
			root = FUNC3(0);
			if (root == 0)
				return (ENXIO);

			dev = FUNC1(root);
			while (dev != 0) {
				res = FUNC2(dev, "name", buf, sizeof(buf));
				if (res > 0 && FUNC13(buf, "cpus") == 0)
					break;
				dev = FUNC3(dev);
			}
			cpu = FUNC1(dev);
			while (cpu != 0) {
				res = FUNC2(cpu, "device_type", buf,
						sizeof(buf));
				if (res > 0 && FUNC13(buf, "cpu") == 0)
					break;
				cpu = FUNC3(cpu);
			}
			if (cpu == 0)
				return (ENOENT);
			if (FUNC2(cpu, "ibm,extended-clock-frequency",
			    cps, sizeof(*cps)) >= 0) {
				return (0);
			} else if (FUNC2(cpu, "clock-frequency", cps, 
			    sizeof(cell_t)) >= 0) {
				*cps >>= 32;
				return (0);
			} else {
				return (ENOENT);
			}
	}
}