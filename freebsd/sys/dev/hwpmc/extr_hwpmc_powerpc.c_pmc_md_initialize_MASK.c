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
struct powerpc_cpu {int dummy; } ;
struct pmc_mdep {int /*<<< orphan*/  pmd_switch_out; int /*<<< orphan*/  pmd_switch_in; } ;

/* Variables and functions */
#define  FSL_E500mc 139 
#define  FSL_E500v1 138 
#define  FSL_E500v2 137 
#define  FSL_E5500 136 
#define  IBM970 135 
#define  IBM970FX 134 
#define  IBM970MP 133 
#define  MPC7447A 132 
#define  MPC7448 131 
#define  MPC7450 130 
#define  MPC7455 129 
#define  MPC7457 128 
 int /*<<< orphan*/  M_PMC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (struct pmc_mdep*) ; 
 struct pmc_mdep* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pmc_mdep*) ; 
 int FUNC6 (struct pmc_mdep*) ; 
 int FUNC7 (struct pmc_mdep*) ; 
 int /*<<< orphan*/  powerpc_pcpu ; 
 int /*<<< orphan*/  powerpc_switch_in ; 
 int /*<<< orphan*/  powerpc_switch_out ; 

struct pmc_mdep *
FUNC8()
{
	struct pmc_mdep *pmc_mdep;
	int error;
	uint16_t vers;
	
	/*
	 * Allocate space for pointers to PMC HW descriptors and for
	 * the MDEP structure used by MI code.
	 */
	powerpc_pcpu = FUNC0(sizeof(struct powerpc_cpu *) * FUNC2(), M_PMC,
			   M_WAITOK|M_ZERO);

	/* Just one class */
	pmc_mdep = FUNC4(1);

	vers = FUNC1() >> 16;

	pmc_mdep->pmd_switch_in  = powerpc_switch_in;
	pmc_mdep->pmd_switch_out = powerpc_switch_out;
	
	switch (vers) {
	case MPC7447A:
	case MPC7448:
	case MPC7450:
	case MPC7455:
	case MPC7457:
		error = FUNC6(pmc_mdep);
		break;
	case IBM970:
	case IBM970FX:
	case IBM970MP:
		error = FUNC7(pmc_mdep);
		break;
	case FSL_E500v1:
	case FSL_E500v2:
	case FSL_E500mc:
	case FSL_E5500:
		error = FUNC3(pmc_mdep);
		break;
	default:
		error = -1;
		break;
	}

	if (error != 0) {
		FUNC5(pmc_mdep);
		pmc_mdep = NULL;
	}

	return (pmc_mdep);
}