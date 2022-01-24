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
struct TYPE_2__ {int /*<<< orphan*/ * rxs; int /*<<< orphan*/  rxf; int /*<<< orphan*/  rxb; int /*<<< orphan*/ * ifp; int /*<<< orphan*/ * txs; int /*<<< orphan*/  txf; int /*<<< orphan*/  txb; int /*<<< orphan*/  gnttab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  M_XENNETBACK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static int
FUNC6(void)
{
	int error = 0;

	FUNC3(xnb_unit_pvt.gnttab, sizeof(xnb_unit_pvt.gnttab));

	xnb_unit_pvt.txs = FUNC5(PAGE_SIZE, M_XENNETBACK, M_WAITOK|M_ZERO);
	if (xnb_unit_pvt.txs != NULL) {
		FUNC2(xnb_unit_pvt.txs);
		FUNC0(&xnb_unit_pvt.txb, xnb_unit_pvt.txs, PAGE_SIZE);
		FUNC1(&xnb_unit_pvt.txf, xnb_unit_pvt.txs, PAGE_SIZE);
	} else {
		error = 1;
	}

	xnb_unit_pvt.ifp = FUNC4(IFT_ETHER);
	if (xnb_unit_pvt.ifp == NULL) {
		error = 1;
	}

	xnb_unit_pvt.rxs = FUNC5(PAGE_SIZE, M_XENNETBACK, M_WAITOK|M_ZERO);
	if (xnb_unit_pvt.rxs != NULL) {
		FUNC2(xnb_unit_pvt.rxs);
		FUNC0(&xnb_unit_pvt.rxb, xnb_unit_pvt.rxs, PAGE_SIZE);
		FUNC1(&xnb_unit_pvt.rxf, xnb_unit_pvt.rxs, PAGE_SIZE);
	} else {
		error = 1;
	}

	return error;
}