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
struct bnxt_softc {int /*<<< orphan*/  hwrm_cmd_resp; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC1(struct bnxt_softc *softc)
{
	int rc;

	rc = FUNC0(softc->ctx, PAGE_SIZE, &softc->hwrm_cmd_resp,
	    BUS_DMA_NOWAIT);
	return rc;
}