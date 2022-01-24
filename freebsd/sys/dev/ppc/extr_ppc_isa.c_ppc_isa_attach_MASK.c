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
struct ppc_data {int ppc_avm; scalar_t__ ppc_dmachan; int /*<<< orphan*/  ppc_dmadone; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PPB_ECP ; 
 struct ppc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppc_isa_dmadone ; 

int
FUNC4(device_t dev)
{
	struct ppc_data *ppc = FUNC0(dev);

	if ((ppc->ppc_avm & PPB_ECP) && (ppc->ppc_dmachan > 0)) {
		/* acquire the DMA channel forever */   /* XXX */
		FUNC1(ppc->ppc_dmachan);
		FUNC2(ppc->ppc_dmachan, 1024); /* nlpt.BUFSIZE */
		ppc->ppc_dmadone = ppc_isa_dmadone;
	}

	return (FUNC3(dev));
}