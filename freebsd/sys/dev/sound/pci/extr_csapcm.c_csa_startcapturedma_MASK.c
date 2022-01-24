#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_2__ {int dma; } ;
struct csa_info {int cctl; TYPE_1__ rch; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  csa_res ;

/* Variables and functions */
 int /*<<< orphan*/  BA1_CCTL ; 
 int /*<<< orphan*/  BA1_CVOL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct csa_info *csa)
{
	csa_res *resp;
	u_long ul;

	if (!csa->rch.dma) {
		resp = &csa->res;
		ul = FUNC0(resp, BA1_CCTL);
		ul &= 0xffff0000;
		FUNC1(resp, BA1_CCTL, ul | csa->cctl);
		FUNC1(resp, BA1_CVOL, 0x80008000);
		csa->rch.dma = 1;
	}
}