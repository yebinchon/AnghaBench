#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
union ccb {TYPE_1__ ccb_h; int /*<<< orphan*/  ccb_adapter; } ;
struct TYPE_9__ {scalar_t__ outstandingCommands; } ;
struct TYPE_8__ {TYPE_3__* pAdapter; } ;
typedef  TYPE_2__* PBUS_DMAMAP ;
typedef  TYPE_3__ IAL_ADAPTER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ DPC_Request_Nums ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 

__attribute__((used)) static void
FUNC5(union ccb *ccb)
{
	PBUS_DMAMAP pmap = (PBUS_DMAMAP)ccb->ccb_adapter;
	IAL_ADAPTER_T * pAdapter = pmap->pAdapter;
	FUNC1(("ccb_done: ccb %p status %x\n", ccb, ccb->ccb_h.status));

	FUNC2(pmap);
	FUNC4(ccb);

	pAdapter->outstandingCommands--;

	if (pAdapter->outstandingCommands == 0)
	{
		if(DPC_Request_Nums == 0)
			FUNC0(pAdapter);
		FUNC3(pAdapter);
	}
}