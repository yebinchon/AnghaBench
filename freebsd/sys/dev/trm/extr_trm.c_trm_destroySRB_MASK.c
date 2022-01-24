#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  sg_dmat; TYPE_1__* pFreeSRB; } ;
struct TYPE_4__ {struct TYPE_4__* pNextSRB; scalar_t__ dmamap; int /*<<< orphan*/  sg_dmamap; scalar_t__ pSRBSGL; scalar_t__ SRBSGPhyAddr; } ;
typedef  TYPE_1__* PSRB ;
typedef  TYPE_2__* PACB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(PACB pACB)
{
	PSRB pSRB;

	pSRB = pACB->pFreeSRB;
	while (pSRB) {
		if (pSRB->SRBSGPhyAddr)
			FUNC1(pACB->sg_dmat, pSRB->sg_dmamap);
		if (pSRB->pSRBSGL)
			FUNC2(pACB->sg_dmat, pSRB->pSRBSGL,
			    pSRB->sg_dmamap);
		if (pSRB->dmamap)
			FUNC0(pACB->buffer_dmat, pSRB->dmamap);
		pSRB = pSRB->pNextSRB;
	}
}