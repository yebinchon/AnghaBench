#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_3__ {int /*<<< orphan*/  dma; } ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct csa_info {int cctl; TYPE_1__ pch; TYPE_2__ rch; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  csa_res ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_SERBSP ; 
 int /*<<< orphan*/  BA1_CCTL ; 
 int /*<<< orphan*/  BA1_CVOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct csa_info *csa)
{
	csa_res *resp;
	u_long ul;

	if (csa->rch.dma) {
		resp = &csa->res;
		ul = FUNC1(resp, BA1_CCTL);
		csa->cctl = ul & 0x0000ffff;
		FUNC3(resp, BA1_CCTL, ul & 0xffff0000);
		FUNC3(resp, BA1_CVOL, 0xffffffff);
		csa->rch.dma = 0;

		/*
		 * The bitwise pointer of the serial FIFO in the DSP
		 * seems to make an error upon starting or stopping the
		 * DSP. Clear the FIFO and correct the pointer if we
		 * are not playing.
		 */
		if (!csa->pch.dma) {
			FUNC0(resp);
			FUNC2(resp, BA0_SERBSP, 0);
		}
	}
}