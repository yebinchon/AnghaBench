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
struct ppc_data {int ppc_type; int ppc_dtm; int ppc_avm; int /*<<< orphan*/  ppc_model; int /*<<< orphan*/  ppc_dev; } ;

/* Variables and functions */
 int PPB_ECP ; 
 int PPB_EPP ; 
 int PPB_NIBBLE ; 
 int PPB_SPP ; 
 int PPC_ECR_EPP ; 
 int PPC_ECR_PS2 ; 
 int PPC_ECR_STD ; 
 int PPC_TYPE_GENERIC ; 
#define  PPC_TYPE_SMCLIKE 128 
 int /*<<< orphan*/  SMC_LIKE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ppc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ppc_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ppc_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct ppc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ppc_data*,int) ; 

__attribute__((used)) static int
FUNC7(struct ppc_data *ppc, int chipset_mode)
{
	/* default to generic */
	ppc->ppc_type = PPC_TYPE_GENERIC;

	if (bootverbose)
		FUNC0(ppc->ppc_dev, "SPP");

	/* first, check for ECP */
	FUNC6(ppc, PPC_ECR_PS2);
	if ((FUNC5(ppc) & 0xe0) == PPC_ECR_PS2) {
		ppc->ppc_dtm |= PPB_ECP | PPB_SPP;
		if (bootverbose)
			FUNC4(" ECP ");

		/* search for SMC style ECP+EPP mode */
		FUNC6(ppc, PPC_ECR_EPP);
	}

	/* try to reset EPP timeout bit */
	if (FUNC1(ppc)) {
		ppc->ppc_dtm |= PPB_EPP;

		if (ppc->ppc_dtm & PPB_ECP) {
			/* SMC like chipset found */
			ppc->ppc_model = SMC_LIKE;
			ppc->ppc_type = PPC_TYPE_SMCLIKE;

			if (bootverbose)
				FUNC4(" ECP+EPP");
		} else {
			if (bootverbose)
				FUNC4(" EPP");
		}
	} else {
		/* restore to standard mode */
		FUNC6(ppc, PPC_ECR_STD);
	}

	/* XXX try to detect NIBBLE and PS2 modes */
	ppc->ppc_dtm |= PPB_NIBBLE;

	if (chipset_mode)
		ppc->ppc_avm = chipset_mode;
	else
		ppc->ppc_avm = ppc->ppc_dtm;

	if (bootverbose)
		FUNC4("\n");

	switch (ppc->ppc_type) {
	case PPC_TYPE_SMCLIKE:
		FUNC3(ppc, chipset_mode);
		break;
	default:
		FUNC2(ppc, chipset_mode);
		break;
	}

	return (chipset_mode);
}