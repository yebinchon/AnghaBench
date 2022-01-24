#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct oce_mq_sge {void* length; void* pa_lo; void* pa_hi; } ;
struct TYPE_10__ {struct oce_mq_sge* sgl; } ;
struct TYPE_11__ {TYPE_3__ u1; } ;
struct TYPE_12__ {TYPE_4__ u0; } ;
struct TYPE_8__ {int sge_count; scalar_t__ embedded; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct oce_mbx {int payload_length; TYPE_5__ payload; TYPE_2__ u0; } ;
struct TYPE_13__ {int paddr; } ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;
typedef  TYPE_6__* POCE_DMA_MEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int OCE_BMBX_RHDR_SZ ; 
 int /*<<< orphan*/  FUNC1 (struct oce_mbx*,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct oce_mbx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oce_mbx*) ; 
 int FUNC5 (int) ; 

int
FUNC6(POCE_SOFTC sc, POCE_DMA_MEM dma_mem, uint32_t req_size)
{
	struct oce_mbx mbx;
	struct oce_mq_sge *sgl;
	int rc = 0;

	FUNC1(&mbx, sizeof(struct oce_mbx));

	mbx.u0.s.embedded  = 0; /*Non embeded*/
	mbx.payload_length = req_size;
	mbx.u0.s.sge_count = 1;
	sgl = &mbx.payload.u0.u1.sgl[0];
	sgl->pa_hi = FUNC2(FUNC5(dma_mem->paddr));
	sgl->pa_lo = FUNC2((dma_mem->paddr) & 0xFFFFFFFF);
	sgl->length = FUNC2(req_size);

	FUNC0(FUNC4(&mbx), mbx.payload_length + OCE_BMBX_RHDR_SZ);

	rc = FUNC3(sc, &mbx, NULL);
	return rc;
}