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
struct ppc_data {int ppc_avm; int ppc_dtm; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ppc_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int PPB_ECP ; 
 int /*<<< orphan*/  FUNC2 (struct ppc_data*) ; 
 int PPC_ECR_EPP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ppc_data*) ; 

int
FUNC5(device_t dev)
{
	int i, r;
	struct ppc_data *ppc = FUNC1(dev);

	FUNC2(ppc);
	if (!(ppc->ppc_avm & PPB_ECP) && !(ppc->ppc_dtm & PPB_ECP))
		return 0;

	r = FUNC4(ppc);
	if ((r & 0xe0) != PPC_ECR_EPP)
		return 0;

	for (i = 0; i < 100; i++) {
		r = FUNC4(ppc);
		if (r & 0x1)
			return 0;
		FUNC0(100);
	}

	FUNC3(dev, "ECP sync failed as data still present in FIFO.\n");

	return 0;
}