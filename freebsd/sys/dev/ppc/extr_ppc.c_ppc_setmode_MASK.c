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
struct ppc_data {int ppc_type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ppc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct ppc_data*) ; 
#define  PPC_TYPE_GENERIC 129 
#define  PPC_TYPE_SMCLIKE 128 
 int FUNC2 (struct ppc_data*,int) ; 
 int FUNC3 (struct ppc_data*,int) ; 

int
FUNC4(device_t dev, int mode)
{
	struct ppc_data *ppc = FUNC0(dev);

	FUNC1(ppc);
	switch (ppc->ppc_type) {
	case PPC_TYPE_SMCLIKE:
		return (FUNC3(ppc, mode));
		break;

	case PPC_TYPE_GENERIC:
	default:
		return (FUNC2(ppc, mode));
		break;
	}

	/* not reached */
	return (ENXIO);
}